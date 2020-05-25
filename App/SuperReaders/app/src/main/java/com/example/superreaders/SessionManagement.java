package com.example.superreaders;

import android.content.Context;
import android.content.SharedPreferences;

import com.example.superreaders.retrofit.response.LoginResponse;
import com.google.gson.Gson;

public class SessionManagement {
    private SharedPreferences.Editor editor;
    private Context _context;
    private SharedPreferences pref;
    private int PRIVATE_MODE = 0;
    private static final String PREF_NAME = "_store";



    public SessionManagement(Context context) {
        this._context = context;
        pref = _context.getSharedPreferences(PREF_NAME, PRIVATE_MODE);
        editor = pref.edit();
    }

    public void createLoginSession(LoginResponse user){
        editor.putString("currentUser",new Gson().toJson(user));
        editor.putBoolean("isLogin",true);
        // commit changes
        editor.commit();
    }
    public void logoutUser() {
        editor.clear();
        editor.commit();
    }
    public LoginResponse getCurrentUser(){
        String currentUserJson=pref.getString("currentUser", null);
        return new Gson().fromJson(currentUserJson,LoginResponse.class);
    }
    public boolean isLogin(){
        return  pref.getBoolean("isLogin",false);
    }
    public void updateCurrentUser(LoginResponse currentUser){
        editor.clear();
        editor.putString("currentUser",new Gson().toJson(currentUser));
        editor.putBoolean("isLogin",true);
        editor.commit();

    }
}