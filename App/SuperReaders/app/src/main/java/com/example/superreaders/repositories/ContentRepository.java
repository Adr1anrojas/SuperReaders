package com.example.superreaders.repositories;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;

import androidx.lifecycle.MutableLiveData;

import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.response.ContentDetailResponse;
import com.example.superreaders.retrofit.response.ContentResponse;
import com.example.superreaders.retrofit.services.RetrofitService;
import com.example.superreaders.retrofit.services.SuperReadersService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ContentRepository {
    private SuperReadersService superReadersService;
    public MutableLiveData<String> messageResponse = new MutableLiveData<>();
    MutableLiveData<ContentDetailResponse> responseContentDetail = new MutableLiveData<>();
    MutableLiveData<List<ContentResponse>> responseContent = new MutableLiveData<>();
    ArrayList<ContentResponse> contentList = new ArrayList<ContentResponse>();
    MutableLiveData<List<TypeContent>> responseTypeContent = new MutableLiveData<>();
    ArrayList<TypeContent> typeContentList = new ArrayList<TypeContent>();
    public ContentRepository(){
        superReadersService = RetrofitService.createService(SuperReadersService.class);
    }
    public MutableLiveData<List<ContentResponse>> getAllContent() {
        Call<List<ContentResponse>> call = superReadersService.getAllContent();
        call.enqueue(new Callback<List<ContentResponse>>() {
            @Override
            public void onResponse(Call<List<ContentResponse>> call, Response<List<ContentResponse>> response) {
                if(!response.isSuccessful()) {
                    try {
                        messageResponse.setValue("Error: "+response.errorBody().string());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return;
                }
                contentList.removeAll(contentList);
                contentList.addAll(response.body());
                responseContent.setValue(contentList);
            }
            @Override
            public void onFailure(Call<List<ContentResponse>> call, Throwable t) {
                messageResponse.setValue("Error "+t.getMessage());
            }
        });
        return responseContent;
    }
    public MutableLiveData<ContentDetailResponse> getContentById(int idContent){
        Call<ContentDetailResponse> call = superReadersService.getContentById(idContent);
        call.enqueue(new Callback<ContentDetailResponse>() {
            @Override
            public void onResponse(Call<ContentDetailResponse> call, Response<ContentDetailResponse> response) {
                if(!response.isSuccessful()) {
                    try {
                        messageResponse.setValue("Error: "+response.errorBody().string());
                    } catch (IOException e) {
                        messageResponse.setValue("Error: "+e.getMessage());
                    }
                    return;
                }
                responseContentDetail.setValue(response.body());
            }

            @Override
            public void onFailure(Call<ContentDetailResponse> call, Throwable t) {
                messageResponse.setValue("Error: "+t.getMessage());
            }
        });
        return responseContentDetail;
    }
    public MutableLiveData<List<TypeContent>> getTypeContent(){
        System.out.println("Holaa");
        Call<List<TypeContent>> call = superReadersService.getTypeContent();
        call.enqueue(new Callback<List<TypeContent>>() {
            @Override
            public void onResponse(Call<List<TypeContent>> call, Response<List<TypeContent>> response) {
                if(!response.isSuccessful()) {
                    try {
                        messageResponse.setValue("Error: "+response.errorBody().string());
                    } catch (IOException e) {
                        messageResponse.setValue("Error: "+e.getMessage());
                    }
                    return;
                }
                typeContentList.removeAll(typeContentList);
                System.out.println(response.body().size());
                typeContentList.addAll(response.body());
                responseTypeContent.setValue(typeContentList);
            }

            @Override
            public void onFailure(Call<List<TypeContent>> call, Throwable t) {
                messageResponse.setValue("Error: "+t.getMessage());
            }
        });
        return responseTypeContent;
    }
}
