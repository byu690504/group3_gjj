package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "unit_register")
@Getter
@Setter
public class UnitRegister {
    @Id
    @GenericGenerator(name = "myuuid",strategy = "uuid")
    @GeneratedValue(generator = "myuuid")
    @Column(name = "unit_register_id")
    private String unitRegisterId;
    @Column(name = "principal_name")
    private String principalName;
    @Column(name = "principal_card_name")
    private String principalCardName;
    @Column(name = "principal_card_number")
    private String principalCardNumber;
    @Column(name = "principal_status")
    private String principalStatus;
    @Column(name = "agent_name")
    private String agentName;
    @Column(name = "agent_card_name")
    private String agentCardName;
    @Column(name = "agent_card_number")
    private String agentCardNumber;
    /*@Column(name = "unit_id")
    private String unitId;*/
    @OneToOne(targetEntity = Unit.class)
    @JoinColumn(name = "unit_id")
    private Unit unit;
    /*@OneToMany(targetEntity = Agent.class,mappedBy = "unitRegister")
    private List<Agent> agentList=new ArrayList<>();*/
    @OneToOne(targetEntity = UnitOpenAccount.class,mappedBy = "unitRegister")
    private UnitOpenAccount unitOpenAccount;
    @OneToOne(targetEntity = RemitInventory.class,mappedBy = "unitRegister")
    private RemitInventory remitInventory;
}
