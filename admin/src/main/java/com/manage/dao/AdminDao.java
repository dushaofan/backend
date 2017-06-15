package com.manage.dao;

import com.manage.model.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by DuFei on 2017/6/15.
 */
@Repository
public interface  AdminDao {
    Admin selectUserByUserNameAndPwd(@Param("userName") String userName, @Param("userPwd") String userPwd);
    List<Admin> selectAllAdmin();
}
