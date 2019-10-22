package com.zlk.gjj_01.register.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "unit")
@Getter
@Setter
public class Unit {
    @Id
    @GenericGenerator(strategy = "uuid",name = "myuuid")
    @GeneratedValue(generator = "myuuid")
    @Column(name = "unit_id")
    private String unitId;
    @Column(name = "unit_name")
    private String unitName;
    @Column(name = "unit_email")
    private String unitEmail;
    @Column(name = "unit_code")
    private String unitCode;
    @Column(name = "unit_establish_time")
    private Date unitEstablishTime;
    @Column(name = "unit_work_address")
    private String unitWorkAddress;
    @Column(name = "unit_register_address")
    private String unitRegisterAddress;
    @Column(name = "unit_card_name")
    private String unitCardName;
    @Column(name = "unit_card_number")
    private String unitCardNumber;
    @Column(name = "unit_nature_code")
    private String unitNatureCode;
    @OneToOne(targetEntity = UnitRegister.class,mappedBy = "unit")
    private UnitRegister unitRegister;
}
