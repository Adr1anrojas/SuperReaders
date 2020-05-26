package com.example.superreaders.repositories;

import androidx.lifecycle.MutableLiveData;

import com.example.superreaders.retrofit.request.LoginRequest;
import com.example.superreaders.retrofit.response.LoginResponse;
import com.example.superreaders.retrofit.services.RetrofitService;
import com.example.superreaders.retrofit.services.SuperReadersService;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class LoginRepository {
    public MutableLiveData<LoginResponse> userLogged  = new MutableLiveData<>();;
    public MutableLiveData<String> messageResponse  = new MutableLiveData<>();;
    private SuperReadersService superReadersService;
    public LoginRepository(){
            superReadersService = RetrofitService.createService(SuperReadersService.class);
    }
    public MutableLiveData<LoginResponse> onLogin(String userName, String password){
        if(userName.isEmpty() && password.isEmpty()) {
            messageResponse.setValue("No se aceptan vacios llenar los campos");
            return userLogged;
        }
        LoginRequest userCredential = new LoginRequest(userName,password,"");
        Call<LoginResponse> call = superReadersService.login(userCredential);
        call.enqueue(new Callback<LoginResponse>() {
            @Override
            public void onResponse(Call<LoginResponse> call, Response<LoginResponse> response) {
                if(!response.isSuccessful()) {
                    messageResponse.setValue("Usuario o Contraseña incorrectos");
                    return;
                }
                userLogged.setValue(response.body());
            }

            @Override
            public void onFailure(Call<LoginResponse> call, Throwable t) {
                messageResponse.setValue("Usuario o Contraseña incorrectos");
            }
        });
        return userLogged;
    }

}
