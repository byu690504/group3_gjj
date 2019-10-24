package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;


/**
 * @author 张照伟
 * @version 1.0 缴款方式管理申请表
 * @date 2019/10/22 14:32
 */
@Entity
@Table(name = "remit_manager")
@Getter
@Setter
public class RemitManager {

    @Id
    @GeneratedValue(generator = "myGenerator")
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    @Column(name = "remit_manager_id")
    private String remitManagerId;// 缴款方式管理id
    @Column(name = "remit_way")
    private String remitWay;//缴款方式
    @Column(name = "proceeds_unit_name")
    private String proceedsUnitName;//委托收款单位名称
    @Column(name = "proceeds_unit_account")
    private String proceedsUnitAccount;//委托收款单位账号
    @Column(name = "proceeds_unit_bank")
    private String proceedsUnitBank;//托收单位开户银行名称
    @Column(name = "bank_number_change")
    private String bankNumberChange;//银行交换号
    @Column(name = "pay_system_number")
    private String paySystemNumber;//支付系统号
    @Column(name = "proceeds_date")
    private Date proceedsDate;//托收日期
    @Column(name = "remit_unit_name")
    private String remitUnitName;//汇款单位名称
    @Column(name = "remit_unit_bank")
    private String remitUnitBank;//汇款单位开户银行名称
    @Column(name = "remit_unit_account")
    private String remitUnitAccount;//汇款单位账号
    @OneToOne(targetEntity = UnitOpenAccount.class)
    @JoinColumn(name = "unit_open_account_id")
    private UnitOpenAccount unitOpenAccount;
    @OneToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;

}
