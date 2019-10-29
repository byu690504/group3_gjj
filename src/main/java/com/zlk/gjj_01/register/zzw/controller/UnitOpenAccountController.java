package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
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
 * @date 2019/10/22 11:11
 */
@Controller
@RequestMapping("/unitOpenAccount")
public class UnitOpenAccountController {

    @Autowired
    private UnitOpenAccountService unitOpenAccountService;
    @Autowired
    private UnitRegisterService unitRegisterService;
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/toUnitOpenAccount")
    public ModelAndView toUnitOpenAccount(HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        String urId = (String) request.getSession().getAttribute("urId");
        String agentName = (String)request.getSession().getAttribute("agent");
        if(urId==null){
            mv.addObject("msg","请先进行单位登记");
            mv.setViewName("registerByUnitName");
            return mv;
        }
        Unit unit = unitRegisterService.findUnitByUrId(urId);
        Agent agent = loginService.findAgentByAgentName(agentName);
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("agentName",agent.getAgentName());
        mv.addObject("agentPhone",agent.getAgentPhone());
        mv.addObject("unitRegisterId",urId);
        mv.setViewName("unitOpenAccount");
        return mv;
    }

    /*@RequestMapping(value = "/toRemitManager")
    public String toRemitManager(){
        return "payMethod";
    }*/

    @RequestMapping("/unitOpenAccount")
    public ModelAndView unitOpenAccount(UnitRegister unitRegister,UnitOpenAccount unitOpenAccount,HttpServletRequest request) throws ParseException {
        unitOpenAccount.setUnitRegister(unitRegister);
        unitOpenAccountService.save(unitOpenAccount);

        ModelAndView mv=new ModelAndView();
        mv.addObject("msg","单位开户成功，请进行缴款");
        mv.setViewName("payMethod");
        return mv;

    }

}