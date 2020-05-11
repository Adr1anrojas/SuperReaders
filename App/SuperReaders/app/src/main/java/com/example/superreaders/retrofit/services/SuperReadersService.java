package com.example.superreaders.retrofit.services;

import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.request.LoginRequest;

import com.example.superreaders.retrofit.response.ContentDetailResponse;
import com.example.superreaders.retrofit.response.ContentResponse;
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
    /// ClassRoom
    /*
    @GET("ClassRoom/all")
    Call<List<ClassRoomResponse>> getAllClassRoom();
    @POST("ClassRoom")
    Call<ClassRoomResponse> saveClassRoom(@Body ClassRoomRequest body);
    @GET("ClassRoom/{id}")
    Call<List<ClassRoomResponse>> getAllClassRoomById(@Path("id") int idClassroom);
    @PUT("ClassRoom")
    Call<ClassRoomResponse>updateClassRoom(@Body ClassRoomResponse body); // Response porque el se requiere el id
     */
    // Usuarios
    @GET("User/GetTeachers")
    Call<List<UserResponse>> getAllTeachers();
    @GET("User/GetStudents")
    Call<List<UserResponse>> getAllStudents();
    //Login
    @POST("Login")
    Call<LoginResponse> login(@Body LoginRequest body);
    //Contenido
    @GET("Content")
    Call<List<ContentResponse>> getAllContent();
    @GET("Content/{id}")
    Call<ContentDetailResponse> getContentById(@Path("id") int idContent);
    @GET("Content/typeContent")
    Call<List<TypeContent>> getTypeContent();
    @POST("Content/typeContentStudent")
    Call<Void> saveTypeContentStudent(@Body List<TypeContent> body );
    //@POST("Content/contentStudent")
    //Call<Void>
}
