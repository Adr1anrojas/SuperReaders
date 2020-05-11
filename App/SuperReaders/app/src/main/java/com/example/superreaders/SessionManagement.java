package com.example.superreaders;

import android.content.Context;
import android.content.SharedPreferences;

import com.example.superreaders.retrofit.response.LoginResponse;
import com.google.gson.Gson;

public class SessionManagement {
    private SharedPreferences.Editor editor;
    private Context _context;
    public SharedPreferences pref;
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

}