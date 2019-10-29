package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import com.zlk.gjj_01.register.util.DateUtil;
import com.zlk.gjj_01.register.util.certUtil;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
    @Autowired
    private UnitRegisterService unitRegisterService;

    /*@RequestMapping(value = "/toUnitOpenAccount")
    public String toUnitOpenAccount(){
        return "unitOpenAccount";
    }*/

    @RequestMapping("/unitOpenAccount")
    public ModelAndView unitOpenAccount(Unit unit,UnitRegister unitRegister,UnitOpenAccount unitOpenAccount, Map map,HttpServletRequest request) throws ParseException {
        unitOpenAccount.setUnitRegister(unitRegister);
        unitOpenAccountService.save(unitOpenAccount);
        String agentName1= (String) request.getSession().getAttribute("agent");
        unitOpenAccountService.agentAuth(certUtil.getAgentAuth(),agentName1);

        Unit unit1 = unitOpenAccountService.findUnitByUnitName(unit.getUnitName());
        unit.setUnitName(unit1.getUnitName());
        unit.setUnitRegister(unitRegister);
        unitRegister.setUnit(unit);
        unitOpenAccountService.save(unit);
        ModelAndView mv=new ModelAndView();
        mv.setViewName("unitOpenAccount");
        request.getSession().setAttribute("unitRegisterId",unitRegister.getUnitRegisterId());
        return mv;

    }

    @RequestMapping(value = "/toUnitOpenAccount")
    @ResponseBody
    public ModelAndView toUnitOpenAccount(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();

        String agentName = (String)request.getSession().getAttribute("agentName");
        String unitName = (String)request.getSession().getAttribute("unitName");
        String unitRegisterId = (String) request.getSession().getAttribute("unitRegisterId");
        if(unitRegisterId==null){
            //UnitRegister unitRegister = unitRegisterService.findUnitRegisterByUnitId(unit.getUnitId());
            Agent agent = unitOpenAccountService.findAgentByAgentName(agentName);
            Unit unit = unitOpenAccountService.findUnitByUnitName(unitName);
            //mv.addObject("unitRegisterId",unitRegister.getUnitRegisterId());
            mv.addObject("unitName",unit.getUnitName());
            mv.addObject("agentName",agent.getAgentName());
            mv.addObject("agentPhone",agent.getAgentPhone());

        }
        mv.setViewName("unitOpenAccount");
        return mv;
    }

}