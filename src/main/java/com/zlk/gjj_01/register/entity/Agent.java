package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Getter
@Setter
@Table
@Entity
public class Agent {

    @Id
    @GeneratedValue(generator = "myGenerator")
    @GenericGenerator(name = "myGenerator",strategy = "uuid")
    @Column(name = "agent_id")
    private String agentId;
    @Column(name = "agent_name")
    private String agentName;
    @Column(name = "agent_code")
    private String agentCode;
    @Column(name = "agent_password")
    private String agentPassword;
    @Column(name = "card_name")
    private String cardName;
    @Column(name = "card_number")
    private String cardNumber;
    @Column(name = "agent_phone")
    private String agentPhone;
    @Column(name = "agent_auth")
    private String agentAuth;
    /*@Column(name = "unit_id")
    private String unitId;*/
    /*@Column(name = "unit_register_id")
    private String unitRegisterId;*/
    @ManyToOne(targetEntity = Unit.class,cascade = CascadeType.ALL)
    @JoinColumn(name = "unit_id")
    private Unit unit;
    /*@ManyToOne(targetEntity = UnitRegister.class)
    @JoinColumn(name = "unit_register_id")
    private UnitRegister unitRegister;*/

}
