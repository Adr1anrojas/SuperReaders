package com.example.superreaders.viewmodels;
import android.view.View;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.example.superreaders.repositories.ClassRoomRepository;
import com.example.superreaders.retrofit.response.ClassRoomResponse;

import java.util.List;


public class ClassRoomViewModel extends ViewModel {

    private ClassRoomRepository repository;
    private MutableLiveData<String> respose;
    public MutableLiveData<String> getRespose() {
        return respose;
    }
    private MutableLiveData<List<ClassRoomResponse>> allClassRooms;
    public ClassRoomViewModel() {
        this.repository = new ClassRoomRepository();
        respose = new MutableLiveData<String>();

    }
    public void init(){
        allClassRooms = repository.getAllClassRooms();
    }
   public void saveClassRoom(String name,String idTeacher,boolean status){
        repository.saveClassRoom(name,idTeacher,status,respose);
    }
}