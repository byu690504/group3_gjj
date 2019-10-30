package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "unit")
@Getter
@Setter
public class Unit {
    @Id
    @GenericGenerator(strategy = "uuid",name = "myuuid")
    @GeneratedValue(generator = "myuuid")
    @Column(name = "unit_id")
    /**
     * 单位ID
     */
    private String  unitId;
    @Column(name = "unit_name")
    /**
     * 单位名称
     */
    private String unitName;
    @Column(name = "unit_email")
    /**
     * 单位邮箱
     */
    private String unitEmail;
    @Column(name = "unit_code")
    /**
     * 组织机构代码
     */
    private String unitCode;
    @Column(name = "unit_establish_time")
    /**
     * 单位创立时间
     */
    private Date unitEstablishTime;
    @Column(name = "unit_work_address")
    /**
     * 工作地址
     */
    private String unitWorkAddress;
    @Column(name = "unit_register_address")
    /**
     * 注册地址
     */
    private String unitRegisterAddress;
    @Column(name = "unit_card_name")
    /**
     * 证件类型
     */
    private String unitCardName;
    @Column(name = "unit_card_number")
    /**
     * 证件号码
     */
    private String unitCardNumber;
    @Column(name = "unit_nature_code")
    /**
     * 单位性质代码
     */
    private String unitNatureCode;
    @Column(name = "superior_unit")
    /**
     * 上级单位信息
     */
    private String superiorUnit;
    @OneToOne(targetEntity = UnitRegister.class,mappedBy = "unit",cascade = CascadeType.ALL)
    /**
     * 单位登记信息
     */
    private UnitRegister unitRegister;
    @OneToMany(targetEntity = Agent.class,mappedBy = "unit")
    /**
     * 经办人信息
     */
    private List<Agent> agentList=new ArrayList<>();
}
