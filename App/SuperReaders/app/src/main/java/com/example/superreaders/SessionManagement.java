package com.example.superreaders;

import android.content.Context;
import android.content.SharedPreferences;

import com.example.superreaders.retrofit.response.LoginResponse;

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
        System.out.println("Holaaaa");
        editor.putInt("id",user.getId());
        editor.putInt("teacherId",user.getTeacherId());
        editor.putInt("studentId",user.getStudentId());
        editor.putString("firstName",user.getFirstName());
        editor.putString("lastName",user.getLastName());
        editor.putString("userName",user.getUserName());
        editor.putString("email",user.getEmail());
        editor.putInt("idSchool",user.getIdSchool());
        editor.putBoolean("status",user.getStatus());
        editor.putString("role",user.getRole());
        editor.putString("token", user.getToken());
        editor.putBoolean("isLogin", true);
        editor.putString("refreshToken",user.getRefreshToken());
        //editor.putInt("classRoom",user.getClassRoom());
        //editor.putBoolean("isFirstTime",user.getIsFirstTime());
        editor.putBoolean("isLogin",true);
        // commit changes
        editor.commit();
    }
}