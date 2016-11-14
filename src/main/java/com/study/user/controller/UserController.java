package com.study.user.controller;

import com.study.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by yooonsj on 2016. 11. 11..
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {
    private Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserService userService;

    @GetMapping("/signOut")
    public String doSignOut() {
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest().getSession();
        session.invalidate();

        return "redirect:/";
    }

    // Sign up
    @PostMapping("/signUp")
    @ResponseBody
    public HashMap<String, String> doSignUp(@RequestParam Map<String, String> user) {
        logger.info(user.get("id") + " sign up!!!");

        HashMap<String, String> result = new HashMap<String, String>();
        String status = userService.insertUser(user);
        String msg = "";

        if ("success".equals(status)) {
            msg = "Success Sign Up!!!";
            setSessionUserInfo(user);
        } else {
            msg = "Fail Sign Up!!!";
        }

        result.put("status", status);
        result.put("msg", msg);

        return result;
    }

    // Sign in
    @PostMapping("/signIn")
    @ResponseBody
    public HashMap<String, String> doSignIn(@RequestParam Map<String, String> user) {
        logger.info(user.get("id") + " sign up!!!");

        HashMap<String, String> result = new HashMap<String, String>();
        String name = userService.checkUser(user);
        String status = "";
        String msg = "";

        if (name != null) {
            user.put("name", name);
            setSessionUserInfo(user);

            status = "success";
            msg = "Welcome " + name + "!!!";
        } else {
            status = "fail";
            msg = "Fail Sign In!!!\n[check your id or password]";
        }

        result.put("status", status);
        result.put("msg", msg);

        return result;
    }

    // 페이지 이동
    @GetMapping("/{view}")
    public String goView(@PathVariable String view) {
        logger.info("go " + view + " page!!!");
        return "/user/" + view;
    }

    // signed user's info set session
    private void setSessionUserInfo(Map<String, String> user) {
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest().getSession();
        session.setAttribute("isLogin", true);
        session.setAttribute("userId", user.get("id"));
        session.setAttribute("userName", user.get("name"));
    }
}