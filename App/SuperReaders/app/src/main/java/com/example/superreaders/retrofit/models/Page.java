
package com.example.superreaders.retrofit.models;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Page {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("text")
    @Expose
    private String text;
    @SerializedName("idContent")
    @Expose
    private Integer idContent;
    @SerializedName("img")
    @Expose
    private String img;

    /**
     * No args constructor for use in serialization
     * 
     */
    public Page() {
    }

    /**
     * 
     * @param img
     * @param idContent
     * @param id
     * @param text
     */
    public Page(Integer id, String text, Integer idContent, String img) {
        super();
        this.id = id;
        this.text = text;
        this.idContent = idContent;
        this.img = img;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Integer getIdContent() {
        return idContent;
    }

    public void setIdContent(Integer idContent) {
        this.idContent = idContent;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

}
