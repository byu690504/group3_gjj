package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;

/**
 * @Auther: gao
 * @Date: 2019/10/22 0022 9:54
 * @Description: 二级管理辅助实体类
 */
@Entity
@Getter
@Setter
@Table(name = "second_assist_message")//数据库表名
public class SecondAssistMessage {
    /*id,标注是主键*/
    @Id
    /*通用策略生成器*/
    @GeneratedValue(generator = "myGenerator")
    /*自定义策略生成器，主键自增长*/
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    /*标识实体类中属性与数据库表中字段的相应关系*/
    /*二级管理辅助ID*/
    @Column(name = "second_assist_message_id")
    private String secondAssistMessageId;
    /*部门编号*/
    @Column(name = "dept_code")
    private String deptCode;
    /*部门人数*/
    @Column(name = "dept_number")
    private  String deptNumber;
    /*部门名*/
    @Column(name = "dept_name ")
    private String deptName;

    /*多对一关系*//*
    *//*汇缴清单ID*//*
    @Column(name = "remit_inventory_id")
    private String remitInventoryId;*/
    @ManyToOne(targetEntity = RemitInventory.class)
    @JoinColumn(name = "remit_inventory_id")
    private RemitInventory remitInventory;


}
