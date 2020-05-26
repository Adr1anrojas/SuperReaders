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
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface SuperReadersService {
    // Users
    @GET("User/GetTeachers")
    Call<List<UserResponse>> getAllTeachers(@Header("Authorization") String authHeader);

    @GET("User/GetStudents")
    Call<List<UserResponse>> getAllStudents(@Header("Authorization") String authHeader);

    //Login
    @POST("Login")
    Call<LoginResponse> login(@Body LoginRequest body);

    //Content
    @GET("Content")
    Call<List<Content>> getAllContent(@Header("Authorization") String authHeader);

    @GET("Content/{id}")
    Call<ContentDetail> getContentById(@Path("id") int idContent,@Header("Authorization") String authHeader);
    @GET("ContENT/contentByPreferenceStudent/{id}")
    Call<List<Content>> getContentByPreferenceStudent(@Path("id") int idContent,@Header("Authorization") String authHeader );
    @GET("Content/typeContent")
    Call<List<TypeContent>> getTypeContent(@Header("Authorization") String authHeader);

    @POST("Content/typeContentStudent")
    Call<Void> saveTypeContentStudent(@Body List<TypeContent> body,@Header("Authorization") String authHeader);

    @GET("Content/contentByTypeContent")
    Call<List<TypeContentDetail>> getContentByContentType(@Header("Authorization") String authHeader);

    @POST("Content/contentStudent")
    Call<StudentContent> saveContentStudent(@Body StudentContent body,@Header("Authorization") String authHeader);

    @PUT("Content/UpdateTimeReading")
    Call<StudentContent> updateTimeReading(@Body StudentContent body, @Header("Authorization") String authHeader);

    @PUT("Content/finishContent")
    Call<StudentContent> updateFinishContent(@Body StudentContent body, @Header("Authorization") String authHeader);
    @POST("Content/saveAnswerStudent")
    Call<Void> saveAnswerStudent(@Body List<StudentAnswer> body  ,@Header("Authorization") String authHeader);
}
