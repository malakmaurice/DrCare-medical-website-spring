package com.example.webcustomertracker.dao;

import com.example.webcustomertracker.entity.Appointment;
import com.example.webcustomertracker.entity.user;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.print.Doc;
import java.util.List;
@Repository
public class userDaoImp implements userDao {

    //inject session factory
    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private  BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    @Transactional
    public List<user> getusers() {
        Session session=sessionFactory.getCurrentSession();
        List<user> users=session.createQuery("from user",user.class).getResultList();
        return users;
    }

    @Override
    @Transactional
    public void saveuser(user user) {
        Session session=sessionFactory.getCurrentSession();
        user.setPass(bCryptPasswordEncoder.encode(user.getPass()));
        session.saveOrUpdate(user);
    }

    @Override
    @Transactional
    public user getuser(int id) {
        Session session=sessionFactory.getCurrentSession();
        user user=session.get(user.class,id);
        return user;
    }

    @Override
    @Transactional
    public user getUserByEmail(String Email) {
        Session session=sessionFactory.getCurrentSession();
        Query query =  session.createQuery("from user u where u.email = :para", user.class);
        query.setParameter("para" ,Email);
        user user= (user) query.getSingleResult();
        return user;
    }

    @Override
    @Transactional
    public void deleteuser (int id) {
        Session session=sessionFactory.getCurrentSession();
        user  tempUser=session.get(user .class,id);
        session.delete(tempUser);
    }

    @Override
    @Transactional
    public List<user > search(String searchName) {
        Session session=sessionFactory.getCurrentSession();

        Query theQuery=null;
        if(searchName !=null){
             theQuery=session.createQuery("from user  " +
                    "where lower(firstName) like :searchInput or lower(lastName) like :searchInput",user .class);
            theQuery.setParameter("searchInput","%"+searchName+"%");
        }else{
                theQuery=session.createQuery("from user ",user .class);
        }
        List<user> users= theQuery.getResultList();
        return users;
    }

    @Override
    @Transactional
    public void saveAppointment(Appointment appointment) {
        Session session=sessionFactory.getCurrentSession();
        session.save(appointment);
    }
}
