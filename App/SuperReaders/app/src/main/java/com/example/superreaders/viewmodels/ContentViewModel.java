package com.example.superreaders.viewmodels;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import com.example.superreaders.repositories.ContentRepository;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.retrofit.models.Content;

import java.util.List;

public class ContentViewModel extends ViewModel {
    private ContentRepository repository;
    private MutableLiveData<List<Content>> allContent;
    private MutableLiveData<List<ContentDetail>> content;
    private MutableLiveData<String> message;
    public ContentViewModel(){
        this.repository = new ContentRepository();
        message = repository.messageResponse;
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
}
