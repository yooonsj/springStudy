package com.study.user.service;

import java.util.Map;

/**
 * Created by yooonsj on 2016. 11. 11..
 */
public interface UserService {
    public String insertUser(Map<String, String> user);
    public Map<String, String> getUser(String id);
    public String updateUser(Map<String, String> user);
    public String deleteUser(String id);

    public String checkUser(Map<String, String> user);
}
