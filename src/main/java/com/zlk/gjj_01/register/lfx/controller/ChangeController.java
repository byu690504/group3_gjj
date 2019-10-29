package com.zlk.gjj_01.register.lfx.controller;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import com.zlk.gjj_01.register.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;

@Controller
@RequestMapping(value = "/change")
public class ChangeController {
    @Autowired
    private UnitRegisterService unitRegisterService;
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/toPersonRegister")
    public String toPersonRegister(){
        return "remitInventoryByUserName";
    }

    @RequestMapping(value = "/toUnitBusinessPower")
    public String toUnitBusinessPower(){
        return "unitBusinessPower";
    }

    @RequestMapping(value = "/toCentreMain")
    public String toCentreMain(){
        return "centreMain";
    }

    @RequestMapping(value = "/toRegisterChange")
    public ModelAndView toRegisterChange(HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        String urId = (String) request.getSession().getAttribute("urId");
        if(urId==null){
            mv.addObject("msg","请先进行登记");
            mv.setViewName("registerByUnitName");
            return mv;
        }
        Unit unit = unitRegisterService.findUnitByUrId(urId);
        UnitRegister unitRegister = unitRegisterService.findUnitRegisterByUnitId(unit.getUnitId());
        mv.addObject("unitId",unit.getUnitId());
        mv.addObject("unitRegisterId",unitRegister.getUnitRegisterId());
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("unitCode",unit.getUnitCode());
        mv.addObject("unitCardName",unit.getUnitCardName());
        mv.addObject("unitCardNumber",unit.getUnitCardNumber());
        mv.addObject("unitNatureCode",unit.getUnitNatureCode());
        mv.addObject("principalName",unitRegister.getPrincipalName());
        mv.addObject("principalCardName",unitRegister.getPrincipalCardName());
        mv.addObject("principalCardNumber",unitRegister.getPrincipalCardNumber());
        mv.addObject("agentName",unitRegister.getAgentName());
        mv.addObject("agentCardName",unitRegister.getAgentCardName());
        mv.addObject("agentCardNumber",unitRegister.getAgentCardNumber());
        mv.addObject("principalStatus",unitRegister.getPrincipalStatus());
        mv.addObject("unitRegisterAddress",unit.getUnitRegisterAddress());
        mv.addObject("unitWorkAddress",unit.getUnitWorkAddress());
        mv.addObject("unitEstablishTime",unit.getUnitEstablishTime());
        mv.addObject("email",unit.getUnitEmail());
        mv.addObject("superiorUnit",unit.getSuperiorUnit());
        mv.setViewName("registerChange");
        return mv;
    }

    @RequestMapping(value = "/toOpenAccountChange")
    public String toOpenAccountChange(){
        return "openAccountChange";
    }

    @RequestMapping(value = "/personRegister")
    public ModelAndView personRegister(String agentName,String agentCardNumber){
        ModelAndView mv=new ModelAndView();
        mv.addObject("agentName",agentName);
        mv.addObject("agentCardNumber",agentCardNumber);
        mv.addObject("msg","登记成功");
        mv.setViewName("remitInventoryByUserName");
        return mv;
    }

    @RequestMapping(value = "/registerChange")
    public ModelAndView registerChange(Unit unit,UnitRegister unitRegister,String unitTime) throws ParseException {
        ModelAndView mv=new ModelAndView();
        unit.setUnitEstablishTime(DateUtil.stringToDate(unitTime));
        unit.setUnitRegister(unitRegister);
        unitRegister.setUnit(unit);
        loginService.save(unit);
        mv.addObject("msg","修改成功");
        mv.addObject("unitId",unit.getUnitId());
        mv.addObject("unitRegisterId",unitRegister.getUnitRegisterId());
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("unitCode",unit.getUnitCode());
        mv.addObject("unitCardName",unit.getUnitCardName());
        mv.addObject("unitCardNumber",unit.getUnitCardNumber());
        mv.addObject("unitNatureCode",unit.getUnitNatureCode());
        mv.addObject("principalName",unitRegister.getPrincipalName());
        mv.addObject("principalCardName",unitRegister.getPrincipalCardName());
        mv.addObject("principalCardNumber",unitRegister.getPrincipalCardNumber());
        mv.addObject("agentName",unitRegister.getAgentName());
        mv.addObject("agentCardName",unitRegister.getAgentCardName());
        mv.addObject("agentCardNumber",unitRegister.getAgentCardNumber());
        mv.addObject("principalStatus",unitRegister.getPrincipalStatus());
        mv.addObject("unitRegisterAddress",unit.getUnitRegisterAddress());
        mv.addObject("unitWorkAddress",unit.getUnitWorkAddress());
        mv.addObject("unitEstablishTime",unitTime);
        mv.addObject("email",unit.getUnitEmail());
        mv.addObject("superiorUnit",unit.getSuperiorUnit());
        mv.setViewName("registerChange");
        return mv;
    }
}
