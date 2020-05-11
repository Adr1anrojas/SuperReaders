
package com.example.superreaders.retrofit.models;

import java.util.List;

import com.example.superreaders.retrofit.models.Answer;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Question {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("idContent")
    @Expose
    private Integer idContent;
    @SerializedName("text")
    @Expose
    private String text;
    @SerializedName("answers")
    @Expose
    private List<Answer> answers = null;

    /**
     * No args constructor for use in serialization
     * 
     */
    public Question() {
    }

    /**
     * 
     * @param idContent
     * @param answers
     * @param id
     * @param text
     */
    public Question(Integer id, Integer idContent, String text, List<Answer> answers) {
        super();
        this.id = id;
        this.idContent = idContent;
        this.text = text;
        this.answers = answers;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdContent() {
        return idContent;
    }

    public void setIdContent(Integer idContent) {
        this.idContent = idContent;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

}
