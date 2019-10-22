package com.zlk.gjj_01.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

/**
 * @author 张照伟
 * @version 1.0  单位开户申请表
 * @date 2019/10/21 22:02
 */
public class Unit_open_account {

    @Id
    @GeneratedValue(generator = "paymentableGenerator")
    @GenericGenerator(name = "paymentableGenerator",strategy = "org.hibernate.id.UUIDGenerator")
    @Column(name = "unit_open_account_id")
    private long unit_open_account_id;

    private long unit_register_id;//单位登记号

    private String business_kind;//业务种类

    private String money_source;//资金来源

    private String appropriation_unit;//拨款单位

    private String second_assist_message;//开通二级辅助信息

    private String business_agent_dept;//业务经办部门

    private Date payoff_date;//发薪日期

    private Date first_remit_month;//首次汇缴月份

    private String deposite_proportion;//缴存比例

    private String confirm_emp_inventory;//每月是否需要确认人员清册
}
