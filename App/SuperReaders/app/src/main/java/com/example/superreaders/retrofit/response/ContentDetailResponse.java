
package com.example.superreaders.retrofit.response;

import java.util.List;

import com.example.superreaders.retrofit.models.Page;
import com.example.superreaders.retrofit.models.Question;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ContentDetailResponse {

    @SerializedName("content")
    @Expose
    private ContentResponse content;
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
    public ContentDetailResponse() {
    }

    /**
     * 
     * @param pages
     * @param questions
     * @param content
     */
    public ContentDetailResponse(ContentResponse content, List<Page> pages, List<Question> questions) {
        super();
        this.content = content;
        this.pages = pages;
        this.questions = questions;
    }

    public ContentResponse getContent() {
        return content;
    }

    public void setContent(ContentResponse content) {
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
