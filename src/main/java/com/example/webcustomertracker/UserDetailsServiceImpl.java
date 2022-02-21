package com.example.webcustomertracker;

import com.example.webcustomertracker.dao.userDao;
import com.example.webcustomertracker.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    userDao userDao;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        user user =userDao.getUserByEmail(username);
        Set<GrantedAuthority> grantedAuthorities = new HashSet< >();
        return new org.springframework.security.core.userdetails.User(user.getEmail(),user.getPass(),grantedAuthorities);
    }
}
