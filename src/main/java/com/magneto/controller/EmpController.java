package com.magneto.controller;


import com.alibaba.fastjson.JSON;
import com.magneto.pojo.Emp;
import com.magneto.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/emp")
public class EmpController {

    @Autowired
    private EmpService empService;

    /**
     * 雇员登陆
     *
     * @param emp     雇员的登陆信息 用户名+密码
     * @param session 会话作用域
     * @return 登陆成功返回主界面 登陆失败显示登陆界面
     */
    @RequestMapping("/login")
    public String login(Emp emp, HttpSession session) {
        emp = empService.login(emp);
        if (emp != null) {
            session.setAttribute("emp", emp);
            return "back";
        }
        return "login";
    }

    /**
     * 显示全部管理员信息
     *
     * @return 返回全部管理员信息
     */
    @RequestMapping(value = "/selectAllAdmin", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String selectAllAdmin() {
        //管理员信息列表
        List<Emp> empList = empService.selectAllAdmin();

        //将查询到的json转换成json字符串
        return JSON.toJSONString(empList);

    }

    /**
     * 显示全部雇员信息
     *
     * @return 返回全部雇员信息
     */
    @RequestMapping(value = "/selectAllEmp", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String selectAllEmp(){
        //雇员信息列表
        List<Emp> empList = empService.selectAllEmp();
        //将查询到的json转换成json字符串
        return JSON.toJSONString(empList);
    }


    @RequestMapping("/toEdit")
    public String toEdit(Integer id,Model model) {
        Emp emp = empService.toEdit(id);
        model.addAttribute("emp",emp);
        if(emp.getAflag()>0){
            return "pages/admin/admin_edit";
        }
        else{
            return "pages/emp/emp_edit";
        }
    }

    @RequestMapping("/doEdit")
    public String doEdit(Emp emp,Model model){
        int result = empService.doEdit(emp);
        if(result>0){
            if(emp.getAflag()>0){
                return "pages/admin/admin_list";
            }
            else{
                return "pages/emp/emp_edit";
            }

        }
        model.addAttribute("emp",emp);
        return "pages/admin/admin_edit";
    }

    @RequestMapping("/toAddAdmin")
    public String toAddAdmin(Model model){
        int maxId = empService.toAdd();
        model.addAttribute("maxId",maxId);
        return "pages/admin/admin_add";
    }

    @RequestMapping("/toAddEmp")
    public String toAddEmp(Model model){
        int maxId = empService.toAdd();
        model.addAttribute("maxId",maxId);
        return "pages/emp/emp_add";
    }

    @RequestMapping("/doAdd")
    public String doAdd(Emp emp,Model model){
        int result = empService.doAdd(emp);
        if(result>0){
            if(emp.getAflag()>0){
                return "pages/admin/admin_list";
            }
            else{
                return "pages/emp/emp_list";
            }

        }
        else{
            if(emp.getAflag()>0){
                model.addAttribute("maxId",emp.getEid());
                model.addAttribute("emp1",emp);
                return "pages/admin/admin_add";
            }
            else{
                model.addAttribute("maxId",emp.getEid());
                model.addAttribute("emp1",emp);
                return "pages/emp/emp_add";
            }
        }

    }
}
