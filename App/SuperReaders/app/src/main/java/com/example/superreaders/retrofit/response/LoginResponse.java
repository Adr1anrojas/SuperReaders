
package com.example.superreaders.retrofit.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class LoginResponse {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("teacherId")
    @Expose
    private Integer teacherId;
    @SerializedName("firstName")
    @Expose
    private String firstName;
    @SerializedName("lastName")
    @Expose
    private String lastName;
    @SerializedName("userName")
    @Expose
    private String userName;
    @SerializedName("email")
    @Expose
    private String email;
    @SerializedName("idSchool")
    @Expose
    private Integer idSchool;
    @SerializedName("status")
    @Expose
    private Boolean status;
    @SerializedName("role")
    @Expose
    private String role;
    @SerializedName("token")
    @Expose
    private String token;
    @SerializedName("refreshToken")
    @Expose
    private Object refreshToken;
    @SerializedName("classRoom")
    @Expose
    private Object classRoom;

    /**
     * No args constructor for use in serialization
     * 
     */
    public LoginResponse() {
    }

    /**
     * 
     * @param firstName
     * @param lastName
     * @param teacherId
     * @param role
     * @param classRoom
     * @param id
     * @param userName
     * @param email
     * @param idSchool
     * @param status
     * @param token
     * @param refreshToken
     */
    public LoginResponse(Integer id, Integer teacherId, String firstName, String lastName, String userName, String email, Integer idSchool, Boolean status, String role, String token, Object refreshToken, Object classRoom) {
        super();
        this.id = id;
        this.teacherId = teacherId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.email = email;
        this.idSchool = idSchool;
        this.status = status;
        this.role = role;
        this.token = token;
        this.refreshToken = refreshToken;
        this.classRoom = classRoom;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getIdSchool() {
        return idSchool;
    }

    public void setIdSchool(Integer idSchool) {
        this.idSchool = idSchool;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Object getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(Object refreshToken) {
        this.refreshToken = refreshToken;
    }

    public Object getClassRoom() {
        return classRoom;
    }

    public void setClassRoom(Object classRoom) {
        this.classRoom = classRoom;
    }

}
