package com.example.webcustomertracker.dao;

import com.example.webcustomertracker.entity.Appointment;
import com.example.webcustomertracker.entity.user;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface userDao {
    public List<user> getusers();
    public void saveuser(user user);
    public user getuser(int id);
    public user getUserByEmail(String email);
    public void deleteuser(int id);
    public List<user> search(String searchName);
    public void saveAppointment(Appointment appointment);


}
