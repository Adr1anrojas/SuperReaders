package com.example.superreaders.ui.content;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.SessionManagement;
import com.example.superreaders.adapter.TypeContentAdapter;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.retrofit.response.LoginResponse;
import com.example.superreaders.ui.home.HomeActivity;

import java.util.ArrayList;
import java.util.List;

public class TypeContentActivity extends AppCompatActivity {
    private RecyclerView recyclerView;
    private TypeContentAdapter typeContentAdapter;
    private ContentViewModel viewModel;
    private ProgressBar progressBar;
    private String token;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_typecontent);
        SessionManagement sessionManagement =new SessionManagement(this);
        token = sessionManagement.getCurrentUser().getToken();
        recyclerView = findViewById(R.id.rv_type_content);
        typeContentAdapter = new TypeContentAdapter(this);
        recyclerView.setAdapter(typeContentAdapter);
        recyclerView.setHasFixedSize(true);
        GridLayoutManager layoutManager = new GridLayoutManager(this,3);
        recyclerView.setLayoutManager(layoutManager);
        viewModel = ViewModelProviders.of(this).get(ContentViewModel.class);
        Button buttonConfirm = findViewById(R.id.buttonConfirm);
        LinearLayout cl = findViewById(R.id.at_container);
        progressBar = new ProgressBar(getApplicationContext(), null, android.R.attr.progressBarStyleLarge);
        // Crea layout parameters para el ProgressBar
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams( LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        progressBar.setLayoutParams(lp);
        //Define como indeterminado.
        progressBar.setIndeterminate(true);
        // Agrega el ProgressBar al Layout
        cl.addView(progressBar);
        buttonConfirm.setOnClickListener( v->{
            List<TypeContent> typeContentsSelected = typeContentAdapter.typeContentSelected;
            if(typeContentsSelected.isEmpty()){
                Toast.makeText(this,"Seleccione almenos una categoria",Toast.LENGTH_SHORT).show();
            }
            else {
                LoginResponse currentUser=sessionManagement.getCurrentUser();
                currentUser.setIsFirstTime(false);
                sessionManagement.updateCurrentUser(currentUser);
                for (TypeContent e:typeContentsSelected){
                    e.setIdStudent(currentUser.getStudentId());
                }
                viewModel.saveTypeContentStudent(typeContentsSelected,token);
            }
        });
        final Observer<String> observerMsg = message ->{
            Toast.makeText(getApplicationContext(),message,Toast.LENGTH_LONG ).show();
        };
        final Observer<Boolean> observerStatus = status ->{
            Intent intent = new Intent(this,HomeActivity.class);
            startActivity(intent);
            this.finish();
        };
        final Observer<List<TypeContent>> observerTypeContent= type ->{
            if(type!=null){
                typeContentAdapter.addListTypeContent(new ArrayList<>(type));
                progressBar.setVisibility(View.INVISIBLE);
            }
        };
        viewModel.getTypeContent(token).observe(this,observerTypeContent);
        viewModel.getMessage().observe(this,observerMsg);
        viewModel.getStatus().observe(this,observerStatus);

    }
}
