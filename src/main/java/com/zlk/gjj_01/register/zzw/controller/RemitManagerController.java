package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.*;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import com.zlk.gjj_01.register.zzw.service.RemitManagerService;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/23 14:36
 */
@Controller
@RequestMapping("/remitManager")
public class RemitManagerController {

    @Autowired
    private RemitManagerService remitManagerService;
    @Autowired
    private UnitOpenAccountService unitOpenAccountService;
    @Autowired
    private UnitRegisterService unitRegisterService;
    @Autowired
    private LoginService loginService;

    @RequestMapping("/toRemitManager")
    public ModelAndView toRemitManager(HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        String urId = (String) request.getSession().getAttribute("urId");

        UnitOpenAccount unitOpenAccount = unitOpenAccountService.findUnitByUrId(urId);
        Unit unit = unitRegisterService.findUnitByUrId(urId);
        mv.addObject("appropriationUnit",unitOpenAccount.getAppropriationUnit());
        mv.addObject("businessKind",unitOpenAccount.getBusinessKind());
        mv.addObject("moneySource",unitOpenAccount.getMoneySource());
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("unitRegisterId",urId);
        mv.setViewName("payMethod");
        return mv;
    }

    /**
     * 保存到unitBusinessPowerjsp页面并回显
     * @param remitManager
     * @param unitRegister
     * @param request
     * @return
     * @throws ParseException
     */
    @RequestMapping("/remitManager")
    public ModelAndView remitManager(RemitManager remitManager, UnitRegister unitRegister,HttpServletRequest request) throws ParseException {
        /*unitRegister.setUnitRegisterId("1");
        remitManager.setRemitWay("委托收款");
        remitManager.setProceedsUnitName("华龙区财政局");
        remitManager.setProceedsUnitAccount("9876543212345");
        remitManager.setProceedsUnitBank("中国银行");
        remitManager.setBankNumberChange("4567");
        remitManager.setPaySystemNumber("1234");
        remitManager.setProceedsDate(DateUtil.stringToDate("2019-10-22"));
        remitManager.setUnitRegister(unitRegister);*/
        remitManagerService.save(remitManager);

        ModelAndView mv=new ModelAndView();

        String urId = (String) request.getSession().getAttribute("urId");
        String agentName = (String)request.getSession().getAttribute("agent");
        UnitOpenAccount unitOpenAccount1 = unitOpenAccountService.findUnitByUrId(urId);
        Unit unit = unitRegisterService.findUnitByUrId(urId);
        Agent agent = loginService.findAgentByAgentName(agentName);
        mv.addObject("appropriationUnit",unitOpenAccount1.getAppropriationUnit());
        mv.addObject("businessKind",unitOpenAccount1.getBusinessKind());
        mv.addObject("moneySource",unitOpenAccount1.getMoneySource());
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("agentName",agent.getAgentName());
        mv.addObject("agentCardName",agent.getCardName());
        mv.addObject("agentCardNumber",agent.getCardNumber());
        mv.addObject("agentPhone",agent.getAgentPhone());
        mv.addObject("unitRegisterId",urId);
        mv.addObject("msg","缴款成功");
        mv.setViewName("unitBusinessPower");

        return mv;
    }


}

