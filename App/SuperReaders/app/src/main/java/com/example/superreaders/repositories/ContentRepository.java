package com.example.superreaders.repositories;

import androidx.lifecycle.MutableLiveData;

import com.example.superreaders.retrofit.models.StudentAnswer;
import com.example.superreaders.retrofit.models.StudentContent;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.models.TypeContentDetail;
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
    public MutableLiveData<Boolean> status = new MutableLiveData<>();
    public MutableLiveData<ContentDetail> responseContentDetail = new MutableLiveData<>();
    public MutableLiveData<List<Content>> responseContent = new MutableLiveData<>();
    private ArrayList<Content> contentList = new ArrayList<Content>();

    public MutableLiveData<List<TypeContentDetail>> responseContentByType = new MutableLiveData<>();
    private ArrayList<TypeContentDetail> typeContentDetailsList= new ArrayList<TypeContentDetail>();
    public MutableLiveData<List<TypeContent>> responseTypeContent = new MutableLiveData<>();
    ArrayList<TypeContent> typeContentList = new ArrayList<TypeContent>();
    public MutableLiveData<StudentContent> contentStudent = new MutableLiveData<>();
    public ContentRepository(){
        superReadersService = RetrofitService.createService(SuperReadersService.class);
    }
    public MutableLiveData<List<Content>> getAllContent(String token) {
        Call<List<Content>> call = superReadersService.getAllContent(token);
        call.enqueue(new Callback<List<Content>>() {
            @Override
            public void onResponse(Call<List<Content>> call, Response<List<Content>> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                contentList.removeAll(contentList);
                contentList.addAll(response.body());
                responseContent.setValue(contentList);
            }
            @Override
            public void onFailure(Call<List<Content>> call, Throwable t) {
            }
        });
        return responseContent;
    }
    public MutableLiveData<ContentDetail> getContentById(int idContent,String token){
        Call<ContentDetail> call = superReadersService.getContentById(idContent,token);
        call.enqueue(new Callback<ContentDetail>() {
            @Override
            public void onResponse(Call<ContentDetail> call, Response<ContentDetail> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                responseContentDetail.setValue(response.body());
            }

            @Override
            public void onFailure(Call<ContentDetail> call, Throwable t) {
            }
        });
        return responseContentDetail;
    }
    public MutableLiveData<List<TypeContent>> getTypeContent(String token){
        Call<List<TypeContent>> call = superReadersService.getTypeContent(token);
        call.enqueue(new Callback<List<TypeContent>>() {
            @Override
            public void onResponse(Call<List<TypeContent>> call, Response<List<TypeContent>> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                typeContentList.removeAll(typeContentList);
                typeContentList.addAll(response.body());
                responseTypeContent.setValue(typeContentList);
            }

            @Override
            public void onFailure(Call<List<TypeContent>> call, Throwable t) {
            }
        });
        return responseTypeContent;
    }
    public void saveTypeContentStudent(List<TypeContent> contentStudent , String token){
        Call<Void> call = superReadersService.saveTypeContentStudent(contentStudent,token);
        call.enqueue(new Callback<Void>() {
            @Override
            public void onResponse(Call<Void> call, Response<Void> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                status.setValue(true);
            }

            @Override
            public void onFailure(Call<Void> call, Throwable t) {
            }
        });

    }
    public MutableLiveData<List<TypeContentDetail>> getContentByTypeContent(String token){
        Call<List<TypeContentDetail>> call = superReadersService.getContentByContentType(token);
        call.enqueue(new Callback<List<TypeContentDetail>>() {
            @Override
            public void onResponse(Call<List<TypeContentDetail>> call, Response<List<TypeContentDetail>> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                typeContentDetailsList.removeAll(typeContentDetailsList);
                typeContentDetailsList.addAll(response.body());
                responseContentByType.setValue(typeContentDetailsList);

            }

            @Override
            public void onFailure(Call<List<TypeContentDetail>> call, Throwable t) {
            }
        });
        return responseContentByType;
    }
    public void saveContentStudent(StudentContent studentContent, String token){
        Call<StudentContent> call =superReadersService.saveContentStudent(studentContent,token);
        call.enqueue(new Callback<StudentContent>() {
            @Override
            public void onResponse(Call<StudentContent> call, Response<StudentContent> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                contentStudent.setValue(response.body());
            }
            @Override
            public void onFailure(Call<StudentContent> call, Throwable t) {
            }
        });

    }
    public void updateTimeReading(StudentContent studentContent,String token){
        Call<StudentContent> call =superReadersService.updateTimeReading(studentContent,token);
        call.enqueue(new Callback<StudentContent>() {
            @Override
            public void onResponse(Call<StudentContent> call, Response<StudentContent> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                contentStudent.setValue(response.body());
            }
            @Override
            public void onFailure(Call<StudentContent> call, Throwable t) {
            }
        });

    }
    public void  updateFinishContent(StudentContent studentContent,String token){
        Call<StudentContent> call =superReadersService.updateFinishContent(studentContent,token);
        call.enqueue(new Callback<StudentContent>() {
            @Override
            public void onResponse(Call<StudentContent> call, Response<StudentContent> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                contentStudent.setValue(response.body());
            }
            @Override
            public void onFailure(Call<StudentContent> call, Throwable t) {
            }
        });
    }
    public void saveAnswerStudent(List<StudentAnswer> answers, String token){
        Call<Void> call = superReadersService.saveAnswerStudent(answers, token);
        call.enqueue(new Callback<Void>() {
            @Override
            public void onResponse(Call<Void> call, Response<Void> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                status.setValue(true);
            }

            @Override
            public void onFailure(Call<Void> call, Throwable t) {
            }
        });
    }
    public MutableLiveData<List <Content>>getContentByPreferenceStudent(int id, String token){
        Call<List<Content>> call = superReadersService.getContentByPreferenceStudent(id,token);
        call.enqueue(new Callback<List<Content>>() {
            @Override
            public void onResponse(Call<List<Content>> call, Response<List<Content>> response) {
                if(!response.isSuccessful()) {
                    return;
                }
                contentList.removeAll(contentList);
                contentList.addAll(response.body());
                responseContent.setValue(contentList);
            }

            @Override
            public void onFailure(Call<List<Content>> call, Throwable t) {
            }
        });
        return responseContent;
    }
}
