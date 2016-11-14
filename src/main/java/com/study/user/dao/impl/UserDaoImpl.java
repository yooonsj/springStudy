package com.study.user.dao.impl;

import com.study.user.dao.UserDao;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * Created by yooonsj on 2016. 11. 11..
 */
@Repository
public class UserDaoImpl implements UserDao {
    private Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    @Autowired
    private SqlSessionTemplate sqlSession;

    public int insert(Map<String, String> user) {
        logger.info("[" + user.get("id") + "] insert!!!");

        return sqlSession.insert(NAME_SPACE + "insert", user);
    }

    public Map<String, String> select(String id) {
        logger.info("[" + id + "] select!!!");
        return null;
    }

    public int update(Map<String, String> user) {
        logger.info("[" + user.get("id") + "] update!!!");
        return 0;
    }

    public int delete(String id) {
        logger.info("[" + id + "] delete!!!");
        return 0;
    }

    public String check(Map<String, String> user) {
        logger.info("[" + user.get("id") + "] check");
        return sqlSession.selectOne(NAME_SPACE + "check", user);
    }
}
