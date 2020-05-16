package com.example.superreaders.retrofit.models;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class StudentAnswer implements Serializable {

	@SerializedName("idAnswer")
	private Integer idAnswer;

	@SerializedName("id")
	private Integer id;

	@SerializedName("idStudent")
	private Integer idStudent;

	public void setIdAnswer(Integer idAnswer){
		this.idAnswer = idAnswer;
	}

	public Integer getIdAnswer(){
		return idAnswer;
	}

	public void setId(Integer id){
		this.id = id;
	}

	public Integer getId(){
		return id;
	}

	public void setIdStudent(Integer idStudent){
		this.idStudent = idStudent;
	}

	public Integer getIdStudent(){
		return idStudent;
	}
}