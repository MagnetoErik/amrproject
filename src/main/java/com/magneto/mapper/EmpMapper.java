package com.magneto.mapper;

import com.magneto.pojo.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpMapper {

    Emp login(Emp emp);

    List<Emp> selectAll();

}
