package com.magneto.service;

import com.magneto.pojo.Emp;

import java.util.List;

public interface EmpService {

    /**
     * 雇员登录
     * @param emp 雇员输入的用户名+密码
     * @return 返回全部雇员信息
     */
    Emp login(Emp emp);

    /**
     * 查询雇员信息列表
     * @return  返回雇员信息列表
     */
    List<Emp> selectAll();
}
