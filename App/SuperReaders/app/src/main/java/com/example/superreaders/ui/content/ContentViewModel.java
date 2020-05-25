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
    public MutableLiveData<List<Content>> getAllContent(String token){
        return allContent = repository.getAllContent(token);
    }
    public MutableLiveData<ContentDetail> getContentById(int idContent, String token){
        return  repository.getContentById(idContent,token);
    }
    public MutableLiveData<List<TypeContent>> getTypeContent(String token){
        return repository.getTypeContent(token);
    }
    public MutableLiveData<String> getMessage() {
        return message;
    }
    public void saveTypeContentStudent(List<TypeContent> typeContentStudent,String token){
        repository.saveTypeContentStudent(typeContentStudent,token);
    }
    public void saveContentStudent(StudentContent studentContent,String token){
        repository.saveContentStudent(studentContent,token);

    }
    public MutableLiveData<List<TypeContentDetail>> getContentByType(String token){
        return  repository.getContentByTypeContent(token);
    }


    public void updateTimeReading(StudentContent studentContent,String token) {
        repository.updateTimeReading(studentContent,token);
    }
    public void  updateFinishContent(StudentContent studentContent,String token){
        repository.updateFinishContent(studentContent,token);

    }
    public  void saveAnswerStudent(List<StudentAnswer> sa,String token){
        repository.saveAnswerStudent(sa,token);
    }
}
