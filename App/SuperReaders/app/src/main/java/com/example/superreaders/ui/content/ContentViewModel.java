package com.example.superreaders.ui.content;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import com.example.superreaders.repositories.ContentRepository;
import com.example.superreaders.retrofit.models.StudentAnswer;
import com.example.superreaders.retrofit.models.StudentContent;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.models.TypeContentDetail;

import java.util.List;

public class ContentViewModel extends ViewModel {
    private ContentRepository repository;
    private MutableLiveData<List<Content>> allContent;
    private MutableLiveData<List<ContentDetail>> content;

    public MutableLiveData<List<TypeContentDetail>> getAllContentByType() {
        return allContentByType;
    }

    private MutableLiveData<List<TypeContentDetail>> allContentByType;
    private MutableLiveData<StudentContent> contentStudent;

    public MutableLiveData<StudentContent> getContentStudent() {
        return contentStudent;
    }

    private MutableLiveData<String> message;
    public MutableLiveData<Boolean> getStatus() {
        return status;
    }
    private MutableLiveData<Boolean> status;
    public ContentViewModel(){
        this.repository = new ContentRepository();
        message = repository.messageResponse;
        status =  repository.status;
        allContentByType = repository.responseContentByType;
        contentStudent = repository.contentStudent;
    }
    public MutableLiveData<List<Content>> getAllContent(){
        return allContent = repository.getAllContent();
    }
    public MutableLiveData<ContentDetail> getContentById(int idContent){
        return  repository.getContentById(idContent);
    }
    public MutableLiveData<List<TypeContent>> getTypeContent(){
        return repository.getTypeContent();
    }
    public Bitmap decodeImage(String encodedImage){
        byte[] decodedString = Base64.decode(encodedImage, Base64.DEFAULT);
        Bitmap decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length);
        return decodedByte;
    }
    public MutableLiveData<String> getMessage() {
        return message;
    }
    public void saveTypeContentStudent(List<TypeContent> typeContentStudent){
        repository.saveTypeContentStudent(typeContentStudent);
    }
    public void saveContentStudent(StudentContent studentContent){
        repository.saveContentStudent(studentContent);

    }
    public MutableLiveData<List<TypeContentDetail>> getContentByType(){
        return  repository.getContentByTypeContent();
    }


    public void updateTimeReading(StudentContent studentContent) {
        repository.updateTimeReading(studentContent);
    }
    public void  updateFinishContent(StudentContent studentContent){
        repository.updateFinishContent(studentContent);

    }
    public  void saveAnswerStudent(List<StudentAnswer> sa){
        repository.saveAnswerStudent(sa);
    }
}
