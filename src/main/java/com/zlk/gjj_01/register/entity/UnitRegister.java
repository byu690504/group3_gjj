package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;
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
    /**
     * 单位登记ID
     */
    private String unitRegisterId;
    @Column(name = "principal_name")
    /**
     * 法人或负责人姓名
     */
    private String principalName;
    @Column(name = "principal_card_name")
    /**
     * 法人或负责人证件类型
     */
    private String principalCardName;
    @Column(name = "principal_card_number")
    /**
     * 法人或负责人证件号码
     */
    private String principalCardNumber;
    @Column(name = "principal_status")
    /**
     * 法人或负责人是否有效
     */
    private String principalStatus;
    @Column(name = "agent_name")
    /**
     * 经办人姓名
     */
    private String agentName;
    @Column(name = "agent_card_name")
    /**
     * 经办人证件类型
     */
    private String agentCardName;
    @Column(name = "agent_card_number")
    /**
     * 经办人证件号码
     */
    private String agentCardNumber;
    @OneToOne(targetEntity = Unit.class)
    @JoinColumn(name = "unit_id")
    /**
     * 单位信息
     */
    private Unit unit;
    @OneToOne(targetEntity = UnitOpenAccount.class,mappedBy = "unitRegister")
    /**
     * 开户信息
     */
    private UnitOpenAccount unitOpenAccount;
    @OneToMany(targetEntity = RemitInventory.class,mappedBy = "unitRegister")
    /**
     * 员工汇缴清册信息
     */
    private List<RemitInventory> remitInventoryList;
}
