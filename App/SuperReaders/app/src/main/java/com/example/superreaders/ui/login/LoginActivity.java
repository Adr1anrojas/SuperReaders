package com.example.superreaders.ui.login;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.SessionManagement;
import com.example.superreaders.retrofit.response.LoginResponse;
import com.example.superreaders.ui.content.TypeContentActivity;
import com.example.superreaders.ui.home.HomeActivity;

public class LoginActivity extends AppCompatActivity {
    LoginViewModel viewModel;
    EditText txtUser;
    EditText txtPassword;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        SessionManagement session = new SessionManagement(getApplicationContext());
        if(session.isLogin()) {
            onLogin(session.getCurrentUser());
        }
        Button buttonLogin = findViewById(R.id.buttonLogin);
        txtUser = findViewById(R.id.txtUser);
        txtPassword = findViewById(R.id.txtPassword);
        viewModel = ViewModelProviders.of(this).get(LoginViewModel.class);
        buttonLogin.setOnClickListener(v -> {
            viewModel.onLogin(txtUser.getText().toString(),txtPassword.getText().toString());

        });
        final Observer<String> observer = message ->{
            Toast.makeText(getApplicationContext(),message,Toast.LENGTH_LONG ).show();
        };
        final Observer<LoginResponse> observerLogin = user ->{
            if(!user.getToken().isEmpty()){
                session.createLoginSession(user);
                onLogin(user);
            }
        };
        viewModel.getMessageResponse().observe(this,observer);
        viewModel.getUserLoged().observe(this,observerLogin);
    }
    public void onLogin(LoginResponse user){
        Intent intent;
        if(user.getRole().equals("Student")) {
            if (user.getIsFirstTime())
                intent = new Intent(this, TypeContentActivity.class);
            else
                intent = new Intent(this, HomeActivity.class);
            startActivity(intent);
            this.finish();
        }
    }
}
