package com.example.superreaders.viewmodels;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.example.superreaders.repositories.ClassRoomRepository;


public class ClassRoomViewModel extends ViewModel {

    private ClassRoomRepository repository;
    MutableLiveData<String> respose;

    public MutableLiveData<String> getRespose() {
        return respose;
    }

    public ClassRoomViewModel() {
        this.repository = new ClassRoomRepository();
        respose = new MutableLiveData<String>();
    }


    public void saveClassRoom(String name,String idTeacher,boolean status){
        repository.saveClassRoom(name,idTeacher,status,respose);
    }



}