
package com.example.superreaders.retrofit.models;

import java.util.List;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ContentDetail {

    @SerializedName("content")
    @Expose
    private Content content;
    @SerializedName("pages")
    @Expose
    private List<Page> pages = null;
    @SerializedName("questions")
    @Expose
    private List<Question> questions = null;

    /**
     * No args constructor for use in serialization
     * 
     */
    public ContentDetail() {
    }

    /**
     * 
     * @param pages
     * @param questions
     * @param content
     */
    public ContentDetail(Content content, List<Page> pages, List<Question> questions) {
        super();
        this.content = content;
        this.pages = pages;
        this.questions = questions;
    }

    public Content getContent() {
        return content;
    }

    public void setContent(Content content) {
        this.content = content;
    }

    public List<Page> getPages() {
        return pages;
    }

    public void setPages(List<Page> pages) {
        this.pages = pages;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }

}
