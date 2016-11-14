package com.study.user.service.impl;

import com.study.user.dao.UserDao;
import com.study.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by yooonsj on 2016. 11. 11..
 */
@Service
public class UserServiceImpl implements UserService {
    private Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
    @Autowired
    private UserDao userDao;

    public String insertUser(Map<String, String> user) {
        return userDao.insert(user) == 1 ? "success" : "fail";
    }

    public Map<String, String> getUser(String id) {
        return userDao.select(id);
    }

    public String updateUser(Map<String, String> user) {
        return userDao.update(user) == 1 ? "success" : "fail";
    }

    public String deleteUser(String id) {
        return userDao.delete(id) == 1 ? "success" : "fail";
    }

    public String checkUser(Map<String, String> user) {
        return userDao.check(user);
    }
}
