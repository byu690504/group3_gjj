package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * @author 张照伟
 * @version 1.0  单位开户申请表
 * @date 2019/10/21 22:02
 */
@Entity
@Table(name = "unit_open_account")
@Getter
@Setter
public class UnitOpenAccount {

    @Id
    @GeneratedValue(generator = "paymentableGenerator")
    @GenericGenerator(name = "paymentableGenerator",strategy = "uuid")
    @Column(name = "unit_open_account_id")
    private long unitOpenAccountId;//单位开户账号
    /*@Column(name = "unit_register_id")
    private long unitRegisterId;//单位登记号*/
    @Column(name = "business_kind")
    private String businessKind;//业务种类
    @Column(name = "money_source")
    private String moneySource;//资金来源
    @Column(name = "appropriation_unit")
    private String appropriationUnit;//拨款单位
    @Column(name = "second_assist_message")
    private String secondAssistMessage;//开通二级辅助信息
    @Column(name = "business_agent_dept")
    private String businessAgentDept;//业务经办部门
    @Column(name = "payoff_date")
    private Date payoffDate;//发薪日期
    @Column(name = "first_remit_month")
    private Date firstRemitMonth;//首次汇缴月份
    @Column(name = "approved_month_of_cross_year_inventory")
    private Date approvedMonthOfCrossYearInventory;//跨年清册核定月份
    @Column(name = "deposit_proportion")
    private String depositProportion;//缴存比例
    @Column(name = "confirm_emp_inventory")
    private String confirmEmpInventory;//每月是否需要确认人员清册
    @OneToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;
}
