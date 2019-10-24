package com.zlk.gjj_01.register.lfx.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import com.zlk.gjj_01.register.util.DateUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/unitRegister")
public class RegisterController {
    @Autowired
    private UnitRegisterService unitRegisterService;
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/toUnitRegister")
    public String toUnitRegister(){
        return "registerByUnitName";
    }

    @RequestMapping(value = "/beforeRegister")
    public ModelAndView beforeRegister(String unitName){
        ModelAndView mv=new ModelAndView();
        /*unitName="腾讯";*/
        Unit unit = loginService.findByUnitName(unitName);
        if(unit!=null){
            UnitRegister unitRegister = unitRegisterService.findUnitRegisterByUnitId(unit.getUnitId());
            if(unitRegister!=null){
                mv.addObject("msg","该单位已经登记");
                mv.addObject("urId",unitRegister.getUnitRegisterId());
                mv.addObject("uName",unitRegister.getUnit().getUnitName());
                mv.addObject("uCode",unitRegister.getUnit().getUnitCode());
                mv.setViewName("registerByUnitName");
                return mv;
            }else {
                mv.addObject("unitName",unitName);
                mv.setViewName("registerRequest");
                return mv;
            }
        }else {
            mv.addObject("msg","该单位未注册，请核实信息");
            mv.setViewName("registerByUnitName");
            return mv;
        }
    }

    @RequestMapping(value = "/unitRegister")
    @ResponseBody
    public ModelAndView unitRegister(Unit unit, UnitRegister unitRegister) throws ParseException {
        unit.setUnitName("阿里巴巴");
        Unit unit1 = loginService.findByUnitName(unit.getUnitName());
        unit.setUnitId(unit1.getUnitId());
        unit.setUnitEmail(unit1.getUnitEmail());
        unit.setUnitCode("000000");
        unit.setUnitCardName("企业营业执照");
        unit.setUnitCardNumber("000000000");
        unit.setUnitNatureCode("000");
        unit.setUnitRegisterAddress("北京");
        unit.setUnitWorkAddress("濮阳");
        unit.setUnitEstablishTime(DateUtil.stringToDate("2019-10-22"));
        unit.setSuperiorUnit("阿里巴巴爸爸");
        unitRegister.setPrincipalName("lll");
        unitRegister.setPrincipalCardName("身份证");
        unitRegister.setPrincipalCardNumber("000000000000000000");
        unitRegister.setPrincipalStatus("是");
        unitRegister.setAgentName("经办人");
        unitRegister.setAgentCardName("身份证");
        unitRegister.setAgentCardNumber("12345678");
        unit.setUnitRegister(unitRegister);
        unitRegister.setUnit(unit);
        /*unitRegisterService.save(unitRegister);*/
        loginService.save(unit);
        ModelAndView mv=new ModelAndView();
        mv.addObject("msg","登记成功，请进行经办人授权");
        mv.setViewName("centre");
        return mv;
    }

    @RequestMapping(value = "/toAgentAuth")
    @ResponseBody
    public ModelAndView toAgentAuth(HttpServletRequest request){
        String agentName = (String)request.getSession().getAttribute("agent");
        Agent agent = loginService.findAgentByAgentName(agentName);
        ModelAndView mv=new ModelAndView();
        mv.addObject("aName",agent.getAgentName());
        mv.addObject("aCardName",agent.getCardName());
        mv.addObject("aCardNumber",agent.getCardNumber());
        mv.addObject("aPhone",agent.getAgentPhone());
        mv.setViewName("agentAuth");
        return mv;
    }

    @RequestMapping(value = "/agentAuth")
    @ResponseBody
    public ModelAndView agentAuth(){
        ModelAndView mv=new ModelAndView();
        mv.addObject("msg","认证成功");
        mv.setViewName("centre");
        return mv;
    }
}
