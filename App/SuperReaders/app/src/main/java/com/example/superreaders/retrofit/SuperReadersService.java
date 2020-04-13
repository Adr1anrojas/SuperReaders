package com.example.superreaders.retrofit;

import com.example.superreaders.retrofit.request.ClassRoomRequest;
import com.example.superreaders.retrofit.response.ClassRoomResponse;

import java.util.List;


import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface SuperReadersService {
    /// ClassRoom
    @GET("ClassRoom/all")
    Call<List<ClassRoomResponse>> getAllClassRoom();
    @POST(Urls.CLASSROOM)
    Call<ClassRoomResponse> saveClassRoom(@Body ClassRoomRequest body);
    @GET("ClassRoom/{id}")
    Call<List<ClassRoomResponse>> getAllClassRoomById(@Path("id") int idClassroom);
    @PUT("ClassRoom")
    Call<ClassRoomResponse>updateClassRoom(@Body ClassRoomResponse body); // Response porque el se requiere el id
}
