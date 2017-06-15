package com.manage.service.impl;

import com.manage.dao.AdminDao;
import com.manage.model.Admin;
import com.manage.service.AdminService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by DuFei on 2017/6/15.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class AdminServiceImpl  implements AdminService {
    @Resource
    private AdminDao adminDao;

    public Boolean login(String userName, String userPwd)
    {
        Admin admin = adminDao.selectUserByUserNameAndPwd(userName, userPwd);

        return true;
    }
}
