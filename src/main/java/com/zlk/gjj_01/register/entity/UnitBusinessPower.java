package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * @author 张照伟
 * @version 1.0  单位网上操作用户业务授权
 * @date 2019/10/29 19:43
 */
@Getter
@Setter
@Table(name = "unitBusinessPower")
@Entity
public class UnitBusinessPower {
    @Id
    @GeneratedValue(generator = "myGenerator")
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    @Column(name = "unit_business_power_id")
    private String unitBusinessPowerId;//单位网上操作用户业务授权ID

    @Column(name = "account_attribute")
    private String accountAttribute;//账户属性

    @Column(name = "user_type")
    private String userType;//用户类型

}
