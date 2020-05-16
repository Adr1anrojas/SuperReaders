package com.example.superreaders.retrofit.services;

import com.example.superreaders.retrofit.models.StudentAnswer;
import com.example.superreaders.retrofit.models.StudentContent;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.models.TypeContentDetail;
import com.example.superreaders.retrofit.request.LoginRequest;

import com.example.superreaders.retrofit.models.ContentDetail;
import com.example.superreaders.retrofit.models.Content;
import com.example.superreaders.retrofit.response.LoginResponse;
import com.example.superreaders.retrofit.response.UserResponse;

import java.util.List;


import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface SuperReadersService {
    // Users
    @GET("User/GetTeachers")
    Call<List<UserResponse>> getAllTeachers();

    @GET("User/GetStudents")
    Call<List<UserResponse>> getAllStudents();

    //Login
    @POST("Login")
    Call<LoginResponse> login(@Body LoginRequest body);

    //Content
    @GET("Content")
    Call<List<Content>> getAllContent();

    @GET("Content/{id}")
    Call<ContentDetail> getContentById(@Path("id") int idContent);

    @GET("Content/typeContent")
    Call<List<TypeContent>> getTypeContent();

    @POST("Content/typeContentStudent")
    Call<Void> saveTypeContentStudent(@Body List<TypeContent> body);

    @GET("Content/contentByTypeContent")
    Call<List<TypeContentDetail>> getContentByContentType();

    @POST("Content/contentStudent")
    Call<Void> saveContentStudent(@Body StudentContent body);

    @PUT("Content/UpdateTimeReading")
    Call<Void> updateTimeReading(@Body StudentContent body);

    @PUT("Content/finishContent")
    Call<Void> updateFinishContent(@Body StudentContent body);
    @PUT("Content/saveAnswerStudent")
    Call<Void> saveAnswerStudent(@Body List<StudentAnswer> body);
}
