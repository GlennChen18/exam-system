package com.cg.service;

import com.cg.dao.UserDao;
import com.cg.dao.impl.UserDaoImpl;
import com.cg.entity.User;

public class UserService {
    private UserDao userDao = new UserDaoImpl();

    public User queryUser(String username, String password) {
        return userDao.queryUser(username, password);
    }

    public void insert(User user) {
        userDao.insert(user);
    }

    public void modPassword(String username, String password) {
        userDao.modPassword(username, password);
    }
}
