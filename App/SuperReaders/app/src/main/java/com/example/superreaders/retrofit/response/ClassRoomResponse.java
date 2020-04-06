package com.example.superreaders.retrofit.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ClassRoomResponse {

    @SerializedName("id")
    @Expose
    private Integer id;
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
     *
     */
    public ClassRoomResponse() {
    }

    /**
     *
     * @param idTeacher
     * @param name
     * @param id
     * @param status
     */
    public  ClassRoomResponse(Integer id, String name, Integer idTeacher, Boolean status) {
        super();
        this.id = id;
        this.name = name;
        this.idTeacher = idTeacher;
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