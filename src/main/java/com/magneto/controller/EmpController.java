package com.magneto.controller;


import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.magneto.pojo.Emp;
import com.magneto.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/emp")
public class EmpController {

    @Autowired
    private EmpService empService;

    @RequestMapping("/login")
    public String login(Emp emp, HttpServletRequest request) {
        emp = empService.login(emp);
        if(emp!=null){
            HttpSession session = request.getSession();
            session.setAttribute("emp",emp);
            return "back";
        }
        return "login";
    }

    /**
     * 分页显示雇员数据
     * @return 返回全部雇员信息
     */
    @RequestMapping(value="/selectAll",produces="text/html;charset=UTF-8")
    @ResponseBody
    public String selectAll() {
        //雇员信息列表
        List<Emp> empList = empService.selectAll();

        //将查询到的json转换成json字符串
        return JSON.toJSONString(empList);


    }
}
