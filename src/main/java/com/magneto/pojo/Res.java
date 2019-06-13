package com.magneto.pojo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.Date;

@Data
@Alias("res")
public class Res {

    private int rid;//办公用品ID
    private int tid;//办公用品所属分类ID
    private int stid;//办公用品所属子分类ID
    private String title;//办公用品名称
    private double price;//办公用品购入单价
    private Date indate;//办公用品购入日期时间
    private String photo;//办公用品图片
    private int rflag;//该用品是否需要归还 1，表示需要归还 0，表示不需要归还
    private int amount;//商品库存数量

}
