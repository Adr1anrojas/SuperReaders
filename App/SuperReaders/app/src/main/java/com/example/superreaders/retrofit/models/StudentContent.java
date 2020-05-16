package com.example.superreaders.retrofit.models;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;
import java.util.Date;

public class StudentContent implements Serializable {

	@SerializedName("idStudentcontent")
	private Integer idStudentcontent;

	@SerializedName("CurrentPage")
	private Integer currentPage;

	@SerializedName("dateStart")
	private Date dateStart;

	@SerializedName("timeReading")
	private Integer timeReading;

	@SerializedName("idContent")
	private Integer idContent;

	@SerializedName("dateFinish")
	private Date dateFinish;

	@SerializedName("isFinish")
	private Boolean isFinish;

	@SerializedName("idStudent")
	private Integer idStudent;

	@SerializedName("readAgain")
	private Boolean readAgain;

	public void setIdStudentcontent(Integer idStudentcontent){
		this.idStudentcontent = idStudentcontent;
	}

	public Integer getIdStudentcontent(){
		return idStudentcontent;
	}

	public void setCurrentPage(Integer currentPage){
		this.currentPage = currentPage;
	}

	public Integer getCurrentPage(){
		return currentPage;
	}

	public void setDateStart(Date dateStart){
		this.dateStart = dateStart;
	}

	public Date getDateStart(){
		return dateStart;
	}

	public void setTimeReading(Integer timeReading){
		this.timeReading = timeReading;
	}

	public Integer getTimeReading(){
		return timeReading;
	}

	public void setIdContent(Integer idContent){
		this.idContent = idContent;
	}

	public Integer getIdContent(){
		return idContent;
	}

	public void setDateFinish(Date dateFinish){
		this.dateFinish = dateFinish;
	}

	public Date getDateFinish(){
		return dateFinish;
	}

	public void setIsFinish(Boolean isFinish){
		this.isFinish = isFinish;
	}

	public boolean isIsFinish(){
		return isFinish;
	}

	public void setIdStudent(Integer idStudent){
		this.idStudent = idStudent;
	}

	public Integer getIdStudent(){
		return idStudent;
	}

	public void setReadAgain(Boolean readAgain){
		this.readAgain = readAgain;
	}

	public boolean isReadAgain(){
		return readAgain;
	}
}