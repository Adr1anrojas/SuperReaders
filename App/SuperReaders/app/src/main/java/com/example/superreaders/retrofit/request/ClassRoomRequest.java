package com.example.superreaders.retrofit.request;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ClassRoomRequest {

    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("idTeacher")
    @Expose
    private Integer idTeacher;
    @SerializedName("status")
    @Expose
    private Boolean status;

    /**
     * No args constructor for use in serialization
     */
    public ClassRoomRequest() {
    }

    /**
     * @param idTeacher
     * @param name
     * @param status
     */
    public ClassRoomRequest(String name, Integer idTeacher, Boolean status) {
        super();
        this.name = name;
        this.idTeacher = idTeacher;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getIdTeacher() {
        return idTeacher;
    }

    public void setIdTeacher(Integer idTeacher) {
        this.idTeacher = idTeacher;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

}