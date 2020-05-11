package com.example.superreaders.viewmodels;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import com.example.superreaders.repositories.ContentRepository;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.response.ContentDetailResponse;
import com.example.superreaders.retrofit.response.ContentResponse;

import java.util.List;

public class ContentViewModel extends ViewModel {
    private ContentRepository repository;
    private MutableLiveData<List<ContentResponse>> allContent;
    private MutableLiveData<List<ContentDetailResponse>> content;
    private MutableLiveData<String> message;
    public ContentViewModel(){
        this.repository = new ContentRepository();
        message = repository.messageResponse;
    }
    public MutableLiveData<List<ContentResponse>> getAllContent(){
        return allContent = repository.getAllContent();
    }
    public MutableLiveData<ContentDetailResponse> getContentById(int idContent){
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
}
