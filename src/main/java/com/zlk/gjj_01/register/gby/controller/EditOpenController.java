package com.zlk.gjj_01.register.gby.controller;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.gby.service.EditOpenService;
import com.zlk.gjj_01.register.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "/openUnit")
public class EditOpenController {
    @Autowired
    private EditOpenService editOpenService;

    @RequestMapping("/name")
    public String name() {

        return "openChange";
    }

    @RequestMapping(value = "/toOpenAccountChange")
    public ModelAndView toOpenAccountChange(HttpServletRequest request)throws Exception{
        ModelAndView mv = new ModelAndView();
        String urId = (String) request.getSession().getAttribute("unitOpenAccountId");
        if(urId != null) {
            mv.addObject("msg", "请先进行开户申请");
            mv.setViewName("unitOpenAccount");
        }
        UnitOpenAccount unit = editOpenService.findByUrId(urId);
        UnitOpenAccount byUrId = editOpenService.findByUrId(unit.getUnitOpenAccountId());
        mv.addObject("unitOpenAccountI",unit.getUnitOpenAccountId());
        mv.addObject("businessKind",byUrId.getBusinessKind());
        mv.addObject("moneySource",byUrId.getMoneySource());
        mv.addObject("appropriationUnit",byUrId.getAppropriationUnit());
        mv.addObject("secondAssistMessage",byUrId.getSecondAssistMessage());
        mv.addObject("businessAgentDept",byUrId.getBusinessAgentDept());
        mv.addObject("payoffDate",byUrId.getPayoffDate());
        mv.addObject("firstRemitMonth",byUrId.getFirstRemitMonth());
        mv.addObject("approvedMonthOfCrossYearInventory",byUrId.getApprovedMonthOfCrossYearInventory());
        mv.addObject("personDepositProportion",byUrId.getUnitDepositProportion());
        mv.addObject("unitDepositProportion",byUrId.getUnitDepositProportion());
        mv.addObject("confirmEmpInventory",byUrId.getConfirmEmpInventory());
        mv.addObject("acceptTheInformationServiceOfTheCenter",byUrId.getAcceptTheInformationServiceOfTheCenter());
        mv.setViewName("openAccountChange");
        return mv;
    }
    @RequestMapping(value = "/edit")
    public ModelAndView edit(UnitRegister unitRegister, Unit unit ,UnitOpenAccount unitOpenAccount,String unitTime)throws Exception{
        ModelAndView mv = new ModelAndView();
        unit.setUnitEstablishTime(DateUtil.stringToDate(unitTime));
        unit.setUnitRegister(unitRegister);
        unitRegister.setUnit(unit);
        unitRegister.setUnitOpenAccount(unitOpenAccount);
        unitOpenAccount.setUnitRegister(unitRegister);
        editOpenService.save(unit);
            mv.addObject("msg","修改成功");
            mv.addObject("unitOpenAccountI",unitOpenAccount.getUnitOpenAccountId());
            mv.addObject("businessKind",unitOpenAccount.getBusinessKind());
            mv.addObject("moneySource",unitOpenAccount.getMoneySource());
            mv.addObject("appropriationUnit",unitOpenAccount.getAppropriationUnit());
            mv.addObject("secondAssistMessage",unitOpenAccount.getSecondAssistMessage());
            mv.addObject("businessAgentDept",unitOpenAccount.getBusinessAgentDept());
            mv.addObject("payoffDate",unitOpenAccount.getPayoffDate());
            mv.addObject("firstRemitMonth",unitOpenAccount.getFirstRemitMonth());
            mv.addObject("approvedMonthOfCrossYearInventory",unitOpenAccount.getApprovedMonthOfCrossYearInventory());
            mv.addObject("personDepositProportion",unitOpenAccount.getUnitDepositProportion());
            mv.addObject("unitDepositProportion",unitOpenAccount.getUnitDepositProportion());
            mv.addObject("confirmEmpInventory",unitOpenAccount.getConfirmEmpInventory());
            mv.addObject("acceptTheInformationServiceOfTheCenter",unitOpenAccount.getAcceptTheInformationServiceOfTheCenter());
        mv.setViewName("openAccountChange");
        return mv;
    }


}
