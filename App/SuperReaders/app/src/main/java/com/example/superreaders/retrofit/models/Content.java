package com.example.superreaders.retrofit.models;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Content implements Serializable {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("title")
    @Expose
    private String title;
    @SerializedName("idTypeContent")
    @Expose
    private Integer idTypeContent;
    @SerializedName("img")
    @Expose
    private String img;
    @SerializedName("status")
    @Expose
    private Boolean status;

    /**
     * No args constructor for use in serialization
     *
     */
    public Content() {
    }

    /**
     *
     * @param img
     * @param id
     * @param title
     * @param idTypeContent
     * @param status
     */
    public Content(Integer id, String title, Integer idTypeContent, String img, Boolean status) {
        super();
        this.id = id;
        this.title = title;
        this.idTypeContent = idTypeContent;
        this.img = img;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getIdTypeContent() {
        return idTypeContent;
    }

    public void setIdTypeContent(Integer idTypeContent) {
        this.idTypeContent = idTypeContent;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

}