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

    @RequestMapping(value = "/tounitRegister")
    public String toUnitRegister(){
        return "unitRegister";
    }

    @RequestMapping(value = "/unitRegister")
    @ResponseBody
    public String unitRegister(Unit unit, UnitRegister unitRegister, Map map) throws ParseException {
        unit.setUnitName("阿里巴巴");
        Unit unit1 = loginService.findByUnitName(unit.getUnitName());
        if(unit1!=null){
            UnitRegister unitRegister1 = unitRegisterService.findUnitRegisterByUnitId(unit1.getUnitId());
            if(unitRegister1!=null){
                map.put("error","该单位已经登记");
                map.put("urId",unitRegister1.getUnitRegisterId());
                map.put("uName",unitRegister1.getUnit().getUnitName());
                map.put("uCode",unitRegister1.getUnit().getUnitCode());
                return "success";
            }
            unit.setUnitId(unit1.getUnitId());
            unit.setUnitEmail(unit1.getUnitEmail());
        }
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
        return "unitRegister";
    }
    @RequestMapping(value = "/agentAuth")
    @ResponseBody
    public ModelAndView agentAuth(HttpServletRequest request){
        String agentName = (String)request.getSession().getAttribute("agent");
        Agent agent = loginService.findAgentByAgentName(agentName);
        ModelAndView mv=new ModelAndView();
        mv.addObject("aName",agent.getAgentName());
        mv.addObject("aCardName",agent.getCardName());
        mv.addObject("aCardNumber",agent.getCardNumber());
        mv.addObject("aPhone",agent.getAgentPhone());
        mv.setViewName("service/agentAuth");
        return mv;
    }
}
