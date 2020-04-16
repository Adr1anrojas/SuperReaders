package com.example.superreaders.views;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.Toast;
import com.example.superreaders.R;
import com.example.superreaders.viewmodels.ClassRoomViewModel;
import com.google.android.material.bottomnavigation.BottomNavigationView;

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
        BottomNavigationView bottomNav = findViewById(R.id.bottom_navigation);

        bottomNav.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                switch (item.getItemId()){
                    case R.id.nav_add:
                        getSupportFragmentManager().beginTransaction()
                                .replace(R.id.frame_container, new ClassRoomCreateFragment())
                                .commit();
                        break;
                }
                return true;
            }
        });
    }

}
