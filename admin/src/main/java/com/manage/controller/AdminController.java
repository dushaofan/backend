package com.manage.controller;

import com.manage.dao.AdminDao;
import com.manage.entity.Admin;
import com.manage.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.annotation.Resource;
import javax.sound.sampled.Mixer;
import java.util.List;

/**
 * Created by DuFei on 2017/6/15.
 */
@Controller
@RequestMapping("/admin")
public class AdminController
{

    @Resource
    private AdminService adminService;


    @Autowired
    private JedisPool jedisPool;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login()
    {
        return "admin/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginPost(Admin admin)
    {
        if (adminService.login(admin.getUserName(),admin.getPassWord())) {
            return new ModelAndView("redirect:/admin/index");
        }
        return new ModelAndView("redirect:/admin/login");
    }

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index()
    {
         return "admin/index";
    }

}
