package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.util.certUtil;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.Map;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 11:11
 */
@Controller
@RequestMapping("/unitOpenAccount")
public class UnitOpenAccountController {

    @Autowired
    private UnitOpenAccountService unitOpenAccountService;

    @RequestMapping(value = "/toUnitOpenAccount")
    public String toUnitOpenAccount(){ return "unitOpenAccount";}

    @RequestMapping("/unitOpenAccount")
    public String unitOpenAccount(UnitRegister unitRegister,UnitOpenAccount unitOpenAccount, Map map,HttpServletRequest request) throws ParseException {
        /*unitRegister.setUnitRegisterId("1");
        unitOpenAccount.setRemit("单位自筹");//资金来源选择“单位自筹”，拨款单位项关闭不允许输入
        unitOpenAccount.setAcceptTheInformationServiceOfTheCenter("是");
        unitOpenAccount.setConfirmEmpInventory("是");
        unitOpenAccount.setUnitDepositProportion("12%");
        unitOpenAccount.setPersonDepositProportion("12%");
        unitOpenAccount.setApprovedMonthOfCrossYearInventory("7月");
        unitOpenAccount.setFirstRemitMonth(3);
        unitOpenAccount.setPayoffDate(12);
        unitOpenAccount.setBusinessAgentDept("财政局");
        unitOpenAccount.setSecondAssistMessage("是");
        //unitOpenAccount.setAppropriationUnit("市财政");
        unitOpenAccount.setMoneySource("单位自筹");
        unitOpenAccount.setBusinessKind("住房补贴");
        unitOpenAccount.setUnitRegister(unitRegister);
        unitRegister.setUnitOpenAccount(unitOpenAccount);*/
        unitOpenAccount.setUnitRegister(unitRegister);
        unitOpenAccountService.save(unitOpenAccount);
        String agentName1= (String) request.getSession().getAttribute("agent");
        unitOpenAccountService.agentAuth(certUtil.getAgentAuth(),agentName1);

        for(;;) {
            String agentName=certUtil.getAgentAuth();
            Agent agent1 = unitOpenAccountService.findAgentByAgentName(agentName);
            if (agent1 == null) {
                unitOpenAccountService.agentAuth(certUtil.getAgentAuth(),agentName);
                break;
            }
        }

        return "unitBusinessPower";
    }

    @RequestMapping("/unitOpenAccount1")
    @ResponseBody
    public String unitOpenAccount1(UnitRegister unitRegister,UnitOpenAccount unitOpenAccount, Map map) throws ParseException {
        /*unitRegister.setUnitRegisterId("2");

        unitOpenAccount.setUnitRegister(unitRegister);
        unitRegister.setUnitOpenAccount(unitOpenAccount);
        unitOpenAccount.setRemit("财政拨款");//资金来源选择“财政拨款”，拨款单位允许输入
        unitOpenAccount.setAcceptTheInformationServiceOfTheCenter("是");
        unitOpenAccount.setConfirmEmpInventory("是");
        unitOpenAccount.setUnitDepositProportion("12%");
        unitOpenAccount.setPersonDepositProportion("12%");
        unitOpenAccount.setApprovedMonthOfCrossYearInventory("7月");
        unitOpenAccount.setFirstRemitMonth(3);
        unitOpenAccount.setPayoffDate(12);
        unitOpenAccount.setBusinessAgentDept("财政局");
        unitOpenAccount.setSecondAssistMessage("是");
        unitOpenAccount.setAppropriationUnit("市财政");//财政拨款单位○市财政○区县财政
        unitOpenAccount.setMoneySource("单位自筹");
        unitOpenAccount.setBusinessKind("住房补贴");*/
        unitOpenAccount.setUnitRegister(unitRegister);
        unitOpenAccountService.save1(unitOpenAccount);

        return "unitOpenAccount";
    }
}
