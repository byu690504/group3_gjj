package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Getter
@Setter
@Table(name = "agent")
@Entity
public class Agent {

    @Id
    @GeneratedValue(generator = "myGenerator")
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    @Column(name = "agent_id")
    /**
     * 经办人ID
     */
    private String agentId;
    @Column(name = "agent_name")
    /**
     * 经办人姓名
     */
    private String agentName;
    @Column(name = "agent_code")
    /**
     * 用户代码
     */
    private String agentCode;
    @Column(name = "agent_password")
    /**
     * 登陆密码
     */
    private String agentPassword;
    @Column(name = "card_name")
    /**
     * 证件类型
     */
    private String cardName;
    @Column(name = "card_number")
    /**
     * 证件号码
     */
    private String cardNumber;
    @Column(name = "agent_phone")
    /**
     * 手机号码
     */
    private String agentPhone;
    @Column(name = "agent_auth")
    /**
     * CA证书
     */
    private String agentAuth;
    @ManyToOne(targetEntity = Unit.class,cascade = CascadeType.ALL)
    @JoinColumn(name = "unit_id")
    private Unit unit;
}
