package com.example.superreaders.repositories;


import androidx.lifecycle.MutableLiveData;

import com.example.superreaders.retrofit.RetrofitService;
import com.example.superreaders.retrofit.SuperReadersService;
import com.example.superreaders.retrofit.request.ClassRoomRequest;
import com.example.superreaders.retrofit.response.ClassRoomResponse;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ClassRoomRepository {
    private SuperReadersService  superReadersService;
    MutableLiveData<List<ClassRoomResponse>> responseClassRoom = new MutableLiveData<>();
    ArrayList<ClassRoomResponse> classRoomList = new ArrayList<ClassRoomResponse>();
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
    public void  saveClassRoom(String name, String idTeacher, boolean status, final MutableLiveData<String> show) {
        if(!name.isEmpty()&&!idTeacher.isEmpty()) {
            Call<List<ClassRoomResponse>> call = superReadersService.saveClassRoom(new ClassRoomRequest(name,Integer.parseInt(idTeacher),status));
            call.enqueue(new Callback<List<ClassRoomResponse>>() {
                @Override
                public void onResponse(Call<List<ClassRoomResponse>> call, Response<List<ClassRoomResponse>> response) {
                    result = response.message() + " " + response.code();
                    if (response.isSuccessful())
                        show.setValue(result+ response.body().get(0).toString());
                    else
                        show.setValue("ERROR: "+result);
                }
                @Override
                public void onFailure(Call<List<ClassRoomResponse>> call, Throwable t) {
                    result = t.getMessage();
                    show.setValue(result);
                }
            });
            return;
        }
        show.setValue("No se aceptan vacios");
    }
}
