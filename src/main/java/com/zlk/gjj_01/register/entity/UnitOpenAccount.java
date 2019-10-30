package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

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
    @GeneratedValue(generator = "myGenerator")
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    @Column(name = "unit_open_account_id")
        private String unitOpenAccountId;//单位开户申请id
    /*@Column(name = "unit_register_id")
    private long unitRegisterId;//单位登记号*/
    @Column(name = "business_kind")
    private String businessKind;//业务种类  单选项（住房公积金、住房补贴、住房基金、维修基金等）
    @Column(name = "money_source")
    private String moneySource;//资金来源  单选项（单位自筹、财政拨款）
    @Column(name = "appropriation_unit")
    private String appropriationUnit;//拨款单位
    @Column(name = "second_assist_message")
    private String secondAssistMessage;//开通二级辅助信息
    @Column(name = "business_agent_dept")
    private String businessAgentDept;//业务经办部门
    @Column(name = "unit_budget_code")
    private String unitBudgetCode;//单位预算代码
    @Column(name = "payoff_date")
    private Integer payoffDate;//发薪日期  数字1-31
    @Column(name = "first_remit_month")
    private Integer firstRemitMonth;//首次汇缴月份  数字1-12
    @Column(name = "approved_month_of_cross_year_inventory")
    private String approvedMonthOfCrossYearInventory;//跨年清册核定月份  单选项（1月、7月）
    @Column(name = "unit_deposit_proportion")
    private String unitDepositProportion;//单位缴存比例
    @Column(name = "person_deposit_proportion")
    private String personDepositProportion;//个人缴存比例
    @Column(name = "confirm_emp_inventory")
    private String confirmEmpInventory;//每月汇缴是否需要确认人员清册
    @Column(name = "accept_the_information_service_of_the_center")
    private String acceptTheInformationServiceOfTheCenter;//是否接受中心信息服务
    @OneToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;
    @OneToOne(targetEntity = RemitManager.class,mappedBy = "unitOpenAccount")
    private RemitManager remitManager;
}
