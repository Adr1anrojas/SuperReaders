
package com.example.superreaders.retrofit.models;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Answer implements Serializable {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("text")
    @Expose
    private String text;
    @SerializedName("isCorrect")
    @Expose
    private Boolean isCorrect;
    @SerializedName("idQuestion")
    @Expose
    private Integer idQuestion;

    /**
     * No args constructor for use in serialization
     * 
     */
    public Answer() {
    }

    /**
     * 
     * @param idQuestion
     * @param id
     * @param text
     * @param isCorrect
     */
    public Answer(Integer id, String text, Boolean isCorrect, Integer idQuestion) {
        super();
        this.id = id;
        this.text = text;
        this.isCorrect = isCorrect;
        this.idQuestion = idQuestion;
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

    public Boolean getIsCorrect() {
        return isCorrect;
    }

    public void setIsCorrect(Boolean isCorrect) {
        this.isCorrect = isCorrect;
    }

    public Integer getIdQuestion() {
        return idQuestion;
    }

    public void setIdQuestion(Integer idQuestion) {
        this.idQuestion = idQuestion;
    }

}
