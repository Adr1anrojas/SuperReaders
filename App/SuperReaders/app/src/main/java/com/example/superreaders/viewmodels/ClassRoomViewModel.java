package com.example.superreaders.viewmodels;
import android.view.View;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.example.superreaders.repositories.ClassRoomRepository;
import com.example.superreaders.retrofit.response.ClassRoomResponse;
import com.example.superreaders.retrofit.response.UserResponse;

import java.util.List;


public class ClassRoomViewModel extends ViewModel {

    private ClassRoomRepository repository;
    private MutableLiveData<String> respose;
    public MutableLiveData<String> getRespose() {
        return respose;
    }
    private MutableLiveData<List<ClassRoomResponse>> allClassRooms;
    public MutableLiveData<List<UserResponse>> allTeachers;
    public ClassRoomViewModel() {
        this.repository = new ClassRoomRepository();
        respose = repository.messageResponse;
        allTeachers = repository.getAllTeachers();

    }
    public MutableLiveData<List<ClassRoomResponse>> getAllClassRooms(){
        return allClassRooms = repository.getAllClassRooms();

    }
   public void saveClassRoom(String name,String idTeacher,boolean status){
        repository.saveClassRoom(name,idTeacher,status);
    }
}