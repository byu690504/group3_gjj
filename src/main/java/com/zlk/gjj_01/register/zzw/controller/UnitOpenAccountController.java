package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 11:11
 */
@RestController
@RequestMapping("/unitOpenAccount")
public class UnitOpenAccountController {

    @Autowired
    private UnitOpenAccountService unitOpenAccountService;

    @RequestMapping("/get")
    @ResponseBody
    public UnitOpenAccount getUnitOpenAccount(){
        UnitOpenAccount unitOpenAccount = unitOpenAccountService.getUnitOpenAccount();
        return unitOpenAccount;
    }

    @RequestMapping("/save")
    @ResponseBody
    public String save(UnitOpenAccount unitOpenAccount){
        UnitOpenAccount unitOpenAccount1 = new UnitOpenAccount();
        unitOpenAccount1.setConfirmEmpInventory("是");
        unitOpenAccount1.setDepositProportion("12%");
        unitOpenAccount1.setApprovedMonthOfCrossYearInventory("7月");
        unitOpenAccount1.setFirstRemitMonth(3);
        unitOpenAccount1.setPayoffDate(12);
        unitOpenAccount1.setBusinessAgentDept("财政局");
        unitOpenAccount1.setSecondAssistMessage("是");
        unitOpenAccount1.setAppropriationUnit("市财政");
        unitOpenAccount1.setMoneySource("单位自筹");
        unitOpenAccount1.setBusinessKind("住房补贴");
        unitOpenAccount1.setUnitRegisterId("2");
        unitOpenAccount1.setUnitOpenAccountId(UUID.randomUUID().toString());
        unitOpenAccountService.save(unitOpenAccount1);
        return "ok";
    }
}
