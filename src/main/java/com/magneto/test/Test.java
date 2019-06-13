package com.magneto.test;

import com.magneto.pojo.Emp;
import com.magneto.service.EmpService;
import com.magneto.service.impl.EmpServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

@Controller
public class Test {

    @Autowired
    private static EmpService empService;

    public static void main(String[] args){
        for(int i=5012;i<100;i++){
            empService.doAddEmp(new Emp(i,1,2,1,"aa"+i,"aa"+i,"10086"+i,10000,null,0,"男","nophoto.png"));
        }
    }

}
