package com.example.webcustomertracker;

import com.example.webcustomertracker.entity.user;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class test {
    public static void main(String[] args) {
        SessionFactory factory=new Configuration().configure().addAnnotatedClass(user.class).buildSessionFactory();
        Session session=factory.getCurrentSession();
        try{
            session.beginTransaction();
            List<user> doctors=session.createQuery("from user ",user.class).getResultList();
            System.out.println(doctors);
            //session.save(new Doctor("mira","melad","mira@Yahoo","Genis Doctor","01251626"));
            session.getTransaction().commit();
        }finally {
            session.close();
            factory.close();
        }
    }
}
