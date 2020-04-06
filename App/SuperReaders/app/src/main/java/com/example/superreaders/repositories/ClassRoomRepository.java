package com.example.superreaders.repositories;


import androidx.lifecycle.MutableLiveData;

import com.example.superreaders.retrofit.RetrofitService;
import com.example.superreaders.retrofit.SuperReadersService;
import com.example.superreaders.retrofit.request.ClassRoomRequest;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ClassRoomRepository {
    private SuperReadersService  superReadersService;
    public ClassRoomRepository(){
        superReadersService = RetrofitService.createService(SuperReadersService.class);
    }
    private String result;
    public void  saveClassRoom(String name, String idTeacher, boolean status, MutableLiveData<String> show) {
        if(!name.isEmpty()&&!idTeacher.isEmpty()) {
            Call<Void> call = superReadersService.saveClassRoom(new ClassRoomRequest(name,Integer.parseInt(idTeacher),status));
            call.enqueue(new Callback<Void>() {
                @Override
                public void onResponse(Call<Void> call, Response<Void> response) {
                    result = response.message() + " " + response.code();
                    if (response.isSuccessful())
                        show.setValue(result);
                    else
                        show.setValue("ERROR: "+result);
                }
                @Override
                public void onFailure(Call<Void> call, Throwable t) {
                    result = t.getMessage();
                    show.setValue(result);
                }
            });
            return;
        }
        show.setValue("No se aceptan vacios");
    }
}
