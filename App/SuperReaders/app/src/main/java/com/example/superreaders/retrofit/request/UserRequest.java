package com.example.superreaders.retrofit.request;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
public class UserRequest {

    @SerializedName("firstName")
    @Expose
    private String firstName;
    @SerializedName("lastName")
    @Expose
    private String lastName;
    @SerializedName("userName")
    @Expose
    private String userName;
    @SerializedName("role")
    @Expose
    private String role;
    @SerializedName("password")
    @Expose
    private String password;
    @SerializedName("birthDate")
    @Expose
    private String birthDate;
    @SerializedName("email")
    @Expose
    private String email;
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
    public UserRequest() {
    }

    /**
     *
     * @param firstName
     * @param lastName
     * @param password
     * @param role
     * @param userName
     * @param birthDate
     * @param email
     * @param idSchool
     * @param status
     */
    public UserRequest(String firstName, String lastName, String userName, String role, String password, String birthDate, String email, Integer idSchool, Boolean status) {
        super();
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.role = role;
        this.password = password;
        this.birthDate = birthDate;
        this.email = email;
        this.idSchool = idSchool;
        this.status = status;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
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

}