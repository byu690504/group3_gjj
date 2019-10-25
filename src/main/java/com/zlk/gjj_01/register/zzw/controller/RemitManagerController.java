package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.RemitManager;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.util.DateUtil;
import com.zlk.gjj_01.register.zzw.service.RemitManagerService;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
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

    @RequestMapping("/toUnitOpenAccount")
    public String toRemitManager(){return "remitManager";}

    @RequestMapping("/remitManager1")
    @ResponseBody
    public String remitManager1(RemitManager remitManager, UnitRegister unitRegister, Map map) throws ParseException {
        /*unitRegister.setUnitRegisterId("1");
        remitManager.setRemitWay("委托收款");
        remitManager.setProceedsUnitName("华龙区财政局");
        remitManager.setProceedsUnitAccount("9876543212345");
        remitManager.setProceedsUnitBank("中国银行");
        remitManager.setBankNumberChange("4567");
        remitManager.setPaySystemNumber("1234");
        remitManager.setProceedsDate(DateUtil.stringToDate("2019-10-22"));
        remitManager.setUnitRegister(unitRegister);*/
        unitRegister.setRemitManager(remitManager);
        remitManagerService.save1(remitManager);

        return "remitManager1";
    }

    @RequestMapping("/remitManager2")
    @ResponseBody
    public String remitManager2(RemitManager remitManager, UnitRegister unitRegister, Map map) throws ParseException {

        /*unitRegister.setUnitRegisterId("2");
        remitManager.setRemitWay("主动汇款");
        remitManager.setRemitUnitName("中原油田");
        remitManager.setRemitUnitBank("中国工商银行");
        remitManager.setRemitUnitAccount("78437228543");
        remitManager.setUnitRegister(unitRegister);*/
        unitRegister.setRemitManager(remitManager);
        remitManagerService.save2(remitManager);

        return "remitManager2";
    }

    @RequestMapping("/remitManager3")
    @ResponseBody
    public String remitManager3(RemitManager remitManager, UnitRegister unitRegister,UnitOpenAccount unitOpenAccount, Map map) throws ParseException {

        /*unitRegister.setUnitRegisterId("2");
        remitManager.setRemitWay("财政统发");
        unitOpenAccount.setAppropriationUnit("市财政");
        remitManager.setUnitRegister(unitRegister);*/
        unitRegister.setRemitManager(remitManager);
        remitManagerService.save3(remitManager);

        return "remitManager3";
    }

    /*@RequestMapping("/appropriationUnit")
    @ResponseBody
    public ModelAndView appropriationUnit(HttpServletRequest request){
        String appropriationUnit = (String)request.getSession().getAttribute("unitOpenAccount");
        UnitOpenAccount unitOpenAccount = unitOpenAccountService.findUnitOpenAccountByAppropriationUnit(appropriationUnit);
        ModelAndView mv = new ModelAndView();
        mv.addObject(unitOpenAccount.getAppropriationUnit());
        mv.setViewName("/remitManager/appropriationUnit");
        return mv;
    }*/
}

