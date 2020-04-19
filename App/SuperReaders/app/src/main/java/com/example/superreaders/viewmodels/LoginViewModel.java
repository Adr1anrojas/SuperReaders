package com.example.superreaders.viewmodels;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

import com.example.superreaders.repositories.LoginRepository;
import com.example.superreaders.retrofit.response.LoginResponse;

public class LoginViewModel extends ViewModel {
   private LoginRepository repository;
   private MutableLiveData<String> messageResponse;

    public MutableLiveData<LoginResponse> getUserLoged() {
        return userLoged;
    }

    private MutableLiveData<LoginResponse> userLoged;

    public MutableLiveData<String> getMessageResponse() {
        return messageResponse;
    }

    public  LoginViewModel(){
       this.repository = new LoginRepository();
       messageResponse = repository.messageResponse;
       userLoged = repository.userlogded;
   }
   public void onLogin(String userName, String password){
       userLoged = repository.onLogin(userName,password);
   }


}
