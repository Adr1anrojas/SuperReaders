package com.example.superreaders.views;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.Toast;

import com.example.superreaders.R;
import com.example.superreaders.viewmodels.ClassRoomViewModel;

public class ClassRoomCreateFragment extends Fragment {
    Button boton;
    EditText nombre;
    EditText idtecaher;
    Switch status;
    ClassRoomViewModel classRoomViewModel;
    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container,
                             @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_class_room_create, container, false);
    }
    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        nombre = view.findViewById(R.id.editText);
        idtecaher = view.findViewById(R.id.editText2);
        status = view.findViewById(R.id.switch1);
        boton = view.findViewById(R.id.button);
        ClassRoomViewModel classRoomViewModel = ViewModelProviders.of(this).get(ClassRoomViewModel.class);
        classRoomViewModel.init();
        boton.setOnClickListener(v -> {
            classRoomViewModel.saveClassRoom(nombre.getText().toString(),idtecaher.getText().toString(),status.isChecked());
        });
        final Observer<String> observer = resultado ->{
            Toast.makeText(getActivity().getApplicationContext(),resultado,Toast.LENGTH_SHORT ).show();
        };
        classRoomViewModel.getRespose().observe(this.getActivity(),observer);

    }
}
