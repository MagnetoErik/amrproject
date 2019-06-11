package com.magneto.service.impl;

import com.magneto.mapper.EmpMapper;
import com.magneto.pojo.Emp;
import com.magneto.service.EmpService;
import com.magneto.utils.Md5Encrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("/empService")
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpMapper empMapper;

    @Override
    public Emp login(Emp emp) {
        String MD5Password = Md5Encrypt.MD5(emp.getPassword());
        emp.setPassword(MD5Password);
        return empMapper.login(emp);
    }

    @Override
    public List<Emp> selectAll(){
        return empMapper.selectAll();
    }

    @Override
    public Emp toEdit(int id) {
        return empMapper.toEdit(id);
    }

    @Override
    public int doEdit(Emp emp) {
        String MD5Password = Md5Encrypt.MD5(emp.getPassword());
        emp.setPassword(MD5Password);
        return empMapper.doEdit(emp);
    }

    @Override
    public int toAdd() {
        return empMapper.toAdd()+1;
    }

    @Override
    public int doAdd(Emp emp) {
        String MD5Password = Md5Encrypt.MD5(emp.getPassword());
        emp.setPassword(MD5Password);
        System.out.println(emp.getEid());
        return empMapper.doAdd(emp);
    }
}
