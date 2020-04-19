
package com.example.superreaders.retrofit.request;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class LoginRequest {

    @SerializedName("userName")
    @Expose
    private String userName;
    @SerializedName("password")
    @Expose
    private String password;
    @SerializedName("refreshToken")
    @Expose
    private String refreshToken;

    /**
     * No args constructor for use in serialization
     * 
     */
    public LoginRequest() {
    }

    /**
     * 
     * @param password
     * @param userName
     * @param refreshToken
     */
    public LoginRequest(String userName, String password, String refreshToken) {
        super();
        this.userName = userName;
        this.password = password;
        this.refreshToken = refreshToken;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

}
