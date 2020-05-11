package com.example.superreaders.retrofit.models;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ClassRoom {

@SerializedName("id")
@Expose
private Integer id;
@SerializedName("name")
@Expose
private String name;
@SerializedName("status")
@Expose
private Boolean status;

/**
* No args constructor for use in serialization
*
*/
public ClassRoom() {
}

/**
*
* @param name
* @param id
* @param status
*/
public ClassRoom(Integer id, String name, Boolean status) {
super();
this.id = id;
this.name = name;
this.status = status;
}

public Integer getId() {
return id;
}

public void setId(Integer id) {
this.id = id;
}

public String getName() {
return name;
}

public void setName(String name) {
this.name = name;
}

public Boolean getStatus() {
return status;
}

public void setStatus(Boolean status) {
this.status = status;
}

}