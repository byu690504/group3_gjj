package com.zlk.gjj_01.register.zzw.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitBusinessPower;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import com.zlk.gjj_01.register.zzw.service.UnitBusinessPowerService;
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
 * @date 2019/10/29 20:46
 */
@Controller
@RequestMapping("/unitBusinessPower")
public class UnitBusinessPowerController {
    @Autowired
    private UnitBusinessPowerService unitBusinessPowerService;
    @Autowired
    private UnitRegisterService unitRegisterService;
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/toUnitBusinessPower")
    public ModelAndView toUnitBusinessPower(HttpServletRequest request){
        ModelAndView mv=new ModelAndView();
        String urId = (String) request.getSession().getAttribute("urId");
        String agentName = (String)request.getSession().getAttribute("agent");
        Unit unit = unitRegisterService.findUnitByUrId(urId);
        Agent agent = loginService.findAgentByAgentName(agentName);
        mv.addObject("unitName",unit.getUnitName());
        mv.addObject("agentName",agent.getAgentName());
        mv.addObject("agentCardName",agent.getCardName());
        mv.addObject("agentCardNumber",agent.getCardNumber());
        mv.addObject("agentPhone",agent.getAgentPhone());
        mv.addObject("unitRegisterId",urId);
        mv.setViewName("unitBusinessPower");
        return mv;
    }

    @RequestMapping("/unitBusinessPower")
    public String UnitBusinessPower(UnitBusinessPower unitBusinessPower, Map map) throws ParseException{

        unitBusinessPowerService.save(unitBusinessPower);

        return "secondaryManage";
    }

}
