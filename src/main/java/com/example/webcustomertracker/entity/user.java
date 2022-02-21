package com.example.webcustomertracker.entity;

import com.example.webcustomertracker.validator.PasswordConfirm;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.Objects;

@Entity
@Table(name = "user")
public class user {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @NotEmpty(message = "First Name is Required")
    @Column(name = "first_name")
    private String firstName;

    @NotEmpty(message = "Last Name is required")
    @Column(name = "last_name")
    private String lastName;

    @NotEmpty(message = "Email is required")
    @Column(name = "email")
    private String email;

    @NotEmpty(message = "Password is required")
    @Size(min = 6,message = "Password mub be grater or equal than 6 character")
    @Column(name = "password")
    private String pass;

    @Transient
    private String passConfirm;

    @Column(name = "bio")
    private String bio;

    @Column(name = "phone")
    private String phone;

    /*@AssertTrue(message = "password must be equal")
    private boolean isPassConfirm(){
        return Objects.equals(pass,passConfirm);
    }*/

    public String getBio() {
        return bio;
    }

    public String getPhone() {
        return phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getPassConfirm() {
        return passConfirm;
    }

    public void setPassConfirm(String passConfirm) {
        this.passConfirm = passConfirm;
    }
    public user(String firstName, String lastName, String email, String bio, String phone) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.bio = bio;
        this.phone = phone;
    }

    public user(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public user() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", bio='" + bio + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
