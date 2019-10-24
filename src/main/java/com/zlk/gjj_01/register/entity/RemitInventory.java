package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
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
    private String remitInventoryId;
    /*@Column(name ="unit_register_id" )
    private String unitRegisterId;*/
    @Column(name = "money_source")
    private String moneySource;
    @Column(name = "emp_number")
    private String empNumber;
    @Column(name = "emp_name")
    private String empName;
    @Column(name = "emp_card_name")
    private String empCardName;
    @Column(name = "emp_country")
    private String empCountry;
    @Column(name = "emp_card_number")
    private String empCardNumber;
    @Column(name = "emp_deposite_base")
    private String empDepositeBase;
    @ManyToOne(targetEntity = SecondAssistMessage.class)
    @JoinColumn(name = "second_assist_message_id")
    private SecondAssistMessage secondAssistMessage;
    @OneToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;
}