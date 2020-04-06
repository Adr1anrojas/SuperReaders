package com.example.superreaders.views;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.Toast;
import com.example.superreaders.R;
import com.example.superreaders.viewmodels.ClassRoomViewModel;

public class ClassRoomActivity extends AppCompatActivity {
    Button boton;
    EditText nombre;
    EditText idtecaher;
    Switch status;
    ClassRoomViewModel classRoomViewModel;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_class_room);
        nombre = findViewById(R.id.editText);
        idtecaher = findViewById(R.id.editText2);
        status = findViewById(R.id.switch1);
        boton = findViewById(R.id.button);
        classRoomViewModel = ViewModelProviders.of(this).get(ClassRoomViewModel.class);
        boton.setOnClickListener(v -> {
            classRoomViewModel.saveClassRoom(nombre.getText().toString(),idtecaher.getText().toString(),status.isChecked());
        });
       final Observer<String> observer = resultado ->{
           Toast.makeText(getApplicationContext(),resultado,Toast.LENGTH_SHORT ).show();
       };
        classRoomViewModel.getRespose().observe(this,observer);
    }

}
