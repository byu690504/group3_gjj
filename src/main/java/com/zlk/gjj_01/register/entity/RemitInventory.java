package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

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
    @Column(name = "money_source")
    private String moneySource;//资金来源
    @Column(name = "emp_number")
    private String empNumber;//员工编号
    @Column(name = "emp_name")
    private String empName;//员工名字
    @Column(name = "emp_card_name")
    private String empCardName;//员工证件名字
    @Column(name = "emp_country")
    private String empCountry;//员工国别
    @Column(name = "emp_card_number")
    private String empCardNumber;//员工卡编号
    @Column(name = "emp_deposite_base")
    private Integer empDepositeBase;//缴存基数
    @Column(name = "unit_monthly_deposit")
    private Integer unitMonthlyDeposit;//单位月缴存额
    @Column(name = "personal_monthly_deposit ")
    private Integer personalMonthlyDeposit;//个人月缴存额
    @Column(name = "total_monthly_deposit")
    private Integer totalMonthlyDeposit;//月缴存额合计
    @Column(name = "record")
    private String record;//联名卡记录
    @ManyToOne(targetEntity = SecondAssistMessage.class)
    @JoinColumn(name = "second_assist_message_id")
    private SecondAssistMessage secondAssistMessage;//二级缓存
    @ManyToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;//单位注册

    @Override
    public String toString() {
        return "RemitInventory{" +
                "remitInventoryId='" + remitInventoryId + '\'' +
                ", moneySource='" + moneySource + '\'' +
                ", empNumber='" + empNumber + '\'' +
                ", empName='" + empName + '\'' +
                ", empCardName='" + empCardName + '\'' +
                ", empCountry='" + empCountry + '\'' +
                ", empCardNumber='" + empCardNumber + '\'' +
                ", empDepositeBase=" + empDepositeBase +
                ", unitMonthlyDeposit=" + unitMonthlyDeposit +
                ", personalMonthlyDeposit=" + personalMonthlyDeposit +
                ", totalMonthlyDeposit=" + totalMonthlyDeposit +
                ", record='" + record + '\'' +
                ", secondAssistMessage=" + secondAssistMessage +
                ", unitRegister=" + unitRegister +
                '}';
    }
}
