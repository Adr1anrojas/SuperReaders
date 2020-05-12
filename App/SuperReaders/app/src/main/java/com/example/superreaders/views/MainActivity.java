package com.example.superreaders.views;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProviders;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.SessionManagement;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.response.LoginResponse;
import com.example.superreaders.viewmodels.ContentViewModel;
import com.example.superreaders.viewmodels.LoginViewModel;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private RecyclerView recyclerView;
    private TypeContentAdapter typeContentAdapter;
    private ContentViewModel viewModel;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /*
        Button buttonLogout= findViewById(R.id.buttonLogout);
        buttonLogout.setOnClickListener( v->{
            SessionManagement session = new SessionManagement(getApplicationContext());
            session.logoutUser();
            Intent intent = new Intent(this,LoginActivity.class);
            startActivity(intent);
            this.finish();
        });
         */
        SessionManagement sessionManagement =new SessionManagement(this);
        recyclerView = findViewById(R.id.rv_type_content);
        typeContentAdapter = new TypeContentAdapter(this);
        recyclerView.setAdapter(typeContentAdapter);
        recyclerView.setHasFixedSize(true);
        GridLayoutManager layoutManager = new GridLayoutManager(this,3);
        recyclerView.setLayoutManager(layoutManager);
        viewModel = ViewModelProviders.of(this).get(ContentViewModel.class);
        Button buttonConfirm = findViewById(R.id.buttonConfirm);
        buttonConfirm.setOnClickListener( v->{
            List<TypeContent> typeContentsSelected = typeContentAdapter.typeContentSelected;
            if(typeContentsSelected.isEmpty()){
                Toast.makeText(this,"Seleccione almenos una categoria",Toast.LENGTH_SHORT).show();
            }
            else {
                for (TypeContent e:typeContentsSelected){
                    e.setIdStudent(sessionManagement.getCurrentUser().getStudentId());
                }
                viewModel.saveTypeContentStudent(typeContentsSelected);
            }
        });
        //viewModel.getTypeContent();
        final Observer<String> observer = message ->{
            Toast.makeText(getApplicationContext(),message,Toast.LENGTH_LONG ).show();
        };
        final Observer<List<TypeContent>> observerTypeContent= type ->{
            if(type!=null){
                typeContentAdapter.addListTypeContent(new ArrayList<>(type));
            }
        };
        viewModel.getTypeContent().observe(this,observerTypeContent);
        viewModel.getMessage().observe(this,observer);

    }
}
