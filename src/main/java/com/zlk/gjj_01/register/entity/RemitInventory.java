package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

/**
 * 缴费管理实体类
 */
@Entity
@Getter
@Setter
@Table(name = "remit_inventory")
public class RemitInventory {
    @Id
    @Column(name = "remit_inventory_id")
    @GeneratedValue(generator = "myGenerator")
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    private String remitInventoryId;//缴费方式申请表id
    /*@Column(name ="unit_register_id" )
    private String unitRegisterId;*/
    @Column(name = "money_source")
    private String moneySource;//缴费方式
    @Column(name = "emp_number")
    private String empNumber;//员工编号
    @Column(name = "emp_name")
    private String empName;//员工名字
    @Column(name = "emp_card_name")
    private String empCardName;//员工卡名字
    @Column(name = "emp_country")
    private String empCountry;//员工国别
    @Column(name = "emp_card_number")
    private String empCardNumber;//员工卡标号
    @Column(name = "emp_deposite_base")
    private String empDepositeBase;//员工存款
    @ManyToOne(targetEntity = SecondAssistMessage.class)
    @JoinColumn(name = "second_assist_message_id")
    private SecondAssistMessage secondAssistMessage;//二级缓存
    @OneToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;//单位注册
}
