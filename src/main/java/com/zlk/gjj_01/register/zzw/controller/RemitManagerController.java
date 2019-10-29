package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.RemitManager;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import com.zlk.gjj_01.register.zzw.service.RemitManagerService;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.Map;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/23 14:36
 */
@RestController
@RequestMapping("/remitManager")
public class RemitManagerController {

    @Autowired
    private RemitManagerService remitManagerService;
    @Autowired
    private UnitOpenAccountService unitOpenAccountService;
    @Autowired
    private UnitRegisterService unitRegisterService;

    @RequestMapping("/toRemitManager")
    public ModelAndView toRemitManager(HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        String urId = (String) request.getSession().getAttribute("urId");

        UnitOpenAccount unitOpenAccount = unitOpenAccountService.findUnitByUrId(urId);
        Unit unit = unitRegisterService.findUnitByUrId(urId);
        mv.addObject("businessKind",unitOpenAccount.getBusinessKind());
        mv.addObject("moneySource",unitOpenAccount.getMoneySource());
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("unitRegisterId",urId);
        mv.setViewName("payMethod");
        return mv;
    }

    @RequestMapping("/remitManager")
    @ResponseBody
    public String remitManager(RemitManager remitManager, UnitRegister unitRegister, Map map) throws ParseException {
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

        return "unitBusinessPower";
    }

    @RequestMapping("/appropriationUnit")
    @ResponseBody
    public ModelAndView appropriationUnit(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        String urId = (String) request.getSession().getAttribute("urId");
        UnitOpenAccount unitOpenAccount = remitManagerService.findUnitByUrId(urId);

        mv.addObject("appropriationUnit",unitOpenAccount.getAppropriationUnit());
        mv.setViewName("payMethod");
        return mv;
    }
}

