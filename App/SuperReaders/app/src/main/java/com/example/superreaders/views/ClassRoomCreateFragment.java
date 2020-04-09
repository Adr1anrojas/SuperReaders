package com.example.superreaders.views;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.retrofit.response.UserResponse;
import com.example.superreaders.viewmodels.ClassRoomViewModel;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class ClassRoomCreateFragment extends Fragment {
    Button boton;
    EditText nombre;
    Spinner spinner;
    ClassRoomViewModel classRoomViewModel;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_class_room_create, container, false);
    }
    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        nombre = view.findViewById(R.id.txtNombregrupo);
        boton = view.findViewById(R.id.button);
        spinner = view.findViewById(R.id.teacherSpinner);
        classRoomViewModel = ViewModelProviders.of(this).get(ClassRoomViewModel.class);
        //classRoomViewModel.init();
        crear();
        final Observer<String> observer = resultado ->{
            Toast.makeText(getActivity().getApplicationContext(),resultado,Toast.LENGTH_LONG ).show();
        };
        final  Observer<List<UserResponse>> observerTeacher = array ->{
            ArrayAdapter<UserResponse> arrayAdapter = new ArrayAdapter<UserResponse>(this.getActivity(),android.R.layout.simple_spinner_item, array);
            arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            spinner.setAdapter(arrayAdapter);
        };
        classRoomViewModel.allTeachers.observe(this.getActivity(),observerTeacher);
        classRoomViewModel.getRespose().observe(this.getActivity(),observer);
    }
    public void crear(){
        boton.setOnClickListener(v -> {
            UserResponse  teacher= (UserResponse) spinner.getSelectedItem();
            if(teacher != null)
                classRoomViewModel.saveClassRoom(nombre.getText().toString(),teacher.getId()+"",true);
        });

    }
}
