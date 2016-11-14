package com.study.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by CI on 2016-11-09.
 */
@Controller
public class MainController {
    private Logger logger = LoggerFactory.getLogger(MainController.class);

    @GetMapping("/")
    public String main(HttpServletRequest request) {
        logger.debug((String) request.getSession().getAttribute("userName"));
        logger.info("main");
        return "/main/main";
    }
}
