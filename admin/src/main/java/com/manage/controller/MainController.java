package com.manage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by DuFei on 2017/6/15.
 */
@Controller
public class MainController {

    @RequestMapping("/")
    public ModelAndView index()
    {
        return new ModelAndView("redirect:/admin/login");
    }

}
