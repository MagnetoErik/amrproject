package com.magneto.mapper;

import com.magneto.pojo.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpMapper {

    /**
     * 雇员登录
     * @param emp 雇员输入的用户名+密码
     * @return 返回全部雇员信息
     */
    Emp login(Emp emp);


    /**
     * 查询管理员信息列表
     * @return  返回管理员信息列表
     */
    List<Emp> selectAllAdmin();


    /**
     * 查询雇员信息列表
     * @return  返回雇员信息列表
     */
    List<Emp> selectAllEmp();


    /**
     * 编辑雇员前跳转页面并显示信息
     * @param id 所要编辑的雇员id
     * @return 返回雇员信息
     */
    Emp toEdit(@Param("id") int id);


    /**
     * 编辑雇员信息
     * @param emp 雇员信息
     * @return 返回受影响的行数
     */
    int doEdit(Emp emp);


    /**
     * 查询主键，避免主键id重复
     * @return 返回当前主键中的最大值
     */
    int toAdd();

    /**
     * 添加雇员信息
     * @param emp 雇员信息
     * @return 受影响的行数
     */
    int doAdd(Emp emp);

}
