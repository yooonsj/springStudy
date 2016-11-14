package com.study.user.dao;

import java.util.Map;

/**
 * Created by yooonsj on 2016. 11. 11..
 */
public interface UserDao {
    public final String NAME_SPACE = "com.study.user.";

    public int insert(Map<String, String> user);
    public Map<String, String>  select(String id);
    public int update(Map<String, String> user);
    public int delete(String id);

    public String check(Map<String, String> user);
}