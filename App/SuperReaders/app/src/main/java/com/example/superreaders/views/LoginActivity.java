package com.example.superreaders.views;

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
import com.example.superreaders.viewmodels.LoginViewModel;

public class LoginActivity extends AppCompatActivity {
    LoginViewModel viewModel;
    EditText txtUser;
    EditText txtPassword;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        Button botonlogin = findViewById(R.id.botonLogin);
        txtUser = findViewById(R.id.txtUser);
        txtPassword = findViewById(R.id.txtPassword);
        viewModel = ViewModelProviders.of(this).get(LoginViewModel.class);
        botonlogin.setOnClickListener(v -> {
            viewModel.onLogin(txtUser.getText().toString(),txtPassword.getText().toString());

        });
        final Observer<String> observer = resultado ->{
            Toast.makeText(getApplicationContext(),resultado,Toast.LENGTH_LONG ).show();
        };
        final Observer<LoginResponse> observerlogin = usuario ->{
            if(!usuario.getToken().isEmpty()){
                SessionManagement session = new SessionManagement(getApplicationContext());
                session.createLoginSession(usuario);
                Intent intent = new Intent(this,MainActivity.class);

                startActivity(intent);
            }
        };
        viewModel.getMessageResponse().observe(this,observer);
        viewModel.getUserLoged().observe(this,observerlogin);
    }
}
