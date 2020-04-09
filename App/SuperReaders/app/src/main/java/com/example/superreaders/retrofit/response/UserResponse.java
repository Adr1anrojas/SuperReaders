package com.example.superreaders.retrofit.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class UserResponse {

    @SerializedName("id")
    @Expose
    private Integer id;
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
    private Object email;
    @SerializedName("role")
    @Expose
    private String role;
    @SerializedName("password")
    @Expose
    private Object password;
    @SerializedName("birthDate")
    @Expose
    private String birthDate;
    @SerializedName("idSchool")
    @Expose
    private Integer idSchool;
    @SerializedName("status")
    @Expose
    private Boolean status;

    /**
     * No args constructor for use in serialization
     *
     */
    public UserResponse() {
    }

    /**
     *
     * @param firstName
     * @param lastName
     * @param password
     * @param role
     * @param id
     * @param userName
     * @param birthDate
     * @param email
     * @param idSchool
     * @param status
     */
    public UserResponse(Integer id, String firstName, String lastName, String userName, Object email, String role, Object password, String birthDate, Integer idSchool, Boolean status) {
        super();
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.email = email;
        this.role = role;
        this.password = password;
        this.birthDate = birthDate;
        this.idSchool = idSchool;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Object getEmail() {
        return email;
    }

    public void setEmail(Object email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Object getPassword() {
        return password;
    }

    public void setPassword(Object password) {
        this.password = password;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
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
    @Override
    public  String toString (){
        return firstName+" "+lastName;
    }

}