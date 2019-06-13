package com.magneto.test;

import com.magneto.pojo.Emp;
import com.magneto.service.impl.EmpServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {


    public static void main(String[] args){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        EmpServiceImpl empService = applicationContext.getBean("empService", EmpServiceImpl.class);
        for(int i=0;i<100;i++){
            empService.doAddEmp(new Emp(i,1,2,1,"aa"+i,"aa"+i,"10086"+i,10000,null,0,"男","nophoto.png"));
        }
    }

}
