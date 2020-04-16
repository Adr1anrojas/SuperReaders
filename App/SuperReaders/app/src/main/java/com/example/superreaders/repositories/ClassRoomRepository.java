package com.example.superreaders.repositories;


import androidx.lifecycle.MutableLiveData;

import com.example.superreaders.retrofit.response.UserResponse;
import com.example.superreaders.retrofit.services.RetrofitService;
import com.example.superreaders.retrofit.services.SuperReadersService;
import com.example.superreaders.retrofit.request.ClassRoomRequest;
import com.example.superreaders.retrofit.response.ClassRoomResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ClassRoomRepository {
    private SuperReadersService  superReadersService;
    public MutableLiveData<String> messageResponse = new MutableLiveData<>();
    MutableLiveData<List<ClassRoomResponse>> responseClassRoom = new MutableLiveData<>();
    ArrayList<ClassRoomResponse> classRoomList = new ArrayList<ClassRoomResponse>();
    MutableLiveData<List<UserResponse>> responseTeacher = new MutableLiveData<>();
    ArrayList<UserResponse> teacherList = new ArrayList<UserResponse>();
    public ClassRoomRepository(){
        superReadersService = RetrofitService.createService(SuperReadersService.class);
    }
    public  MutableLiveData<List<ClassRoomResponse>> getAllClassRooms(){
        Call<List<ClassRoomResponse>> call = superReadersService.getAllClassRoom();
        call.enqueue(new Callback<List<ClassRoomResponse>>() {
            @Override
            public void onResponse(Call<List<ClassRoomResponse>> call, Response<List<ClassRoomResponse>> response) {
                if(!response.isSuccessful())
                    return;
                classRoomList.removeAll(classRoomList);
                classRoomList.addAll(response.body());
                responseClassRoom.setValue(classRoomList);
            }

            @Override
            public void onFailure(Call<List<ClassRoomResponse>> call, Throwable t) { }
        });
        return responseClassRoom;
    }
    private String result;
    public void  saveClassRoom(String name, String idTeacher, boolean status) {
        if(!name.isEmpty()&&!idTeacher.isEmpty()) {
            Call<ClassRoomResponse> call = superReadersService.saveClassRoom(new ClassRoomRequest(name,Integer.parseInt(idTeacher),status));
            call.enqueue(new Callback<ClassRoomResponse>() {
                @Override
                public void onResponse(Call<ClassRoomResponse> call, Response<ClassRoomResponse> response) {
                    result = response.message() + " " + response.code();
                    if (response.isSuccessful())
                        messageResponse.setValue("El Grupo fue agregado exitosamente");
                    else {
                        try {
                            messageResponse.setValue("ERROR: "+ response.errorBody().string());
                        } catch (IOException e) {
                            messageResponse.setValue(result+" "+e.getMessage());
                        }
                    }
                }
                @Override
                public void onFailure(Call<ClassRoomResponse> call, Throwable t) {
                    result = t.getMessage();
                    messageResponse.setValue(result);
                }
            });
            return;
        }
        messageResponse.setValue("No se aceptan vacios");
    }

    public MutableLiveData<List<UserResponse>> getAllTeachers() {
        Call<List<UserResponse>> call = superReadersService.getAllTeachers();
        call.enqueue(new Callback<List<UserResponse>>() {
            @Override
            public void onResponse(Call<List<UserResponse>> call, Response<List<UserResponse>> response) {
                if(!response.isSuccessful()) {
                    messageResponse.setValue(response.message());
                    return;
                }
                teacherList.removeAll(teacherList);
                teacherList.addAll(response.body());
                responseTeacher.setValue(teacherList);
            }

            @Override
            public void onFailure(Call<List<UserResponse>> call, Throwable t) {
                messageResponse.setValue(t.getMessage());
            }
        });
        return responseTeacher;
    }
}
