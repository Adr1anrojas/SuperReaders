package com.example.superreaders.retrofit;

import com.example.superreaders.retrofit.request.ClassRoomRequest;
import com.example.superreaders.retrofit.response.ClassRoomResponse;

import java.util.List;


import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface SuperReadersService {
    @GET("ClassRoom/all")
    Call<List<ClassRoomResponse>> getAllClassRoom();
    @POST(Urls.CLASSROOM)
    Call<Void> saveClassRoom(@Body ClassRoomRequest body);

}
