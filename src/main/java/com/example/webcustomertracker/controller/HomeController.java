package com.example.webcustomertracker.controller;

import com.example.webcustomertracker.dao.userDao;
import com.example.webcustomertracker.entity.Appointment;
import com.example.webcustomertracker.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;


@Controller
public class HomeController {

    //inject DAO into the controller
    @Autowired
    private userDao userDao;

    @GetMapping("/home")
    public String home(Model model){
        Object principal= SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String userName;
        if(principal instanceof UserDetails){
             userName=((UserDetails) principal).getUsername();
        }else {
             userName=principal.toString();
        }
        user user=userDao.getUserByEmail(userName);
        model.addAttribute("user",user);
        model.addAttribute("appointment",new Appointment());
        return "home";
    }

    @PostMapping("/saveAppointment")
     public String saveAppointment(@ModelAttribute("appointment") Appointment appointment){
        System.out.println(appointment);
        userDao.saveAppointment(appointment);
        return "redirect:/home";
     }

    @GetMapping("/registre")
    public String showRegistrition(Model model){
        model.addAttribute("user",new user());
        return "registre";
    }

    @PostMapping("/registre")
    public String registerProcess(@Valid @ModelAttribute("user") user user, BindingResult bindingResult){

        if(bindingResult.hasErrors())
            return "registre";
        System.out.println(user);
        userDao.saveuser(user);
        return "redirect:/home";
    }
}
