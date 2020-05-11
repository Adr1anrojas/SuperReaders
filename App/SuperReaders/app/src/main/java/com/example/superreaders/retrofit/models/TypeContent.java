package com.example.superreaders.retrofit.models;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class TypeContent {

@SerializedName("id")
@Expose
private Integer id;
@SerializedName("idStudent")
@Expose
private Integer idStudent;
@SerializedName("name")
@Expose
private String name;
@SerializedName("isSelected")
@Expose
private Boolean isSelected;
@SerializedName("img")
@Expose
private String img;

/**
* No args constructor for use in serialization
*
*/
public TypeContent() {
}

/**
*
* @param img
* @param name
* @param isSelected
* @param id
* @param idStudent
*/
public TypeContent(Integer id, Integer idStudent, String name, Boolean isSelected, String img) {
super();
this.id = id;
this.idStudent = idStudent;
this.name = name;
this.isSelected = isSelected;
this.img = img;
}

public Integer getId() {
return id;
}

public void setId(Integer id) {
this.id = id;
}

public Integer getIdStudent() {
return idStudent;
}

public void setIdStudent(Integer idStudent) {
this.idStudent = idStudent;
}

public String getName() {
return name;
}

public void setName(String name) {
this.name = name;
}

public Boolean getIsSelected() {
return isSelected;
}

public void setIsSelected(Boolean isSelected) {
this.isSelected = isSelected;
}

public String getImg() {
return img;
}

public void setImg(String img) {
this.img = img;
}

}