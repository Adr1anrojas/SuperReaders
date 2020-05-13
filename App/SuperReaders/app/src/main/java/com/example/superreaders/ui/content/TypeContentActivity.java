package com.example.superreaders.ui.content;

import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.SessionManagement;
import com.example.superreaders.retrofit.models.TypeContent;
import com.example.superreaders.ui.home.HomeActivity;

import java.util.ArrayList;
import java.util.List;

public class TypeContentActivity extends AppCompatActivity {
    private RecyclerView recyclerView;
    private TypeContentAdapter typeContentAdapter;
    private ContentViewModel viewModel;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_typecontent);
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
            }
        };
        viewModel.getTypeContent().observe(this,observerTypeContent);
        viewModel.getMessage().observe(this,observerMsg);
        viewModel.getStatus().observe(this,observerStatus);

    }
}
