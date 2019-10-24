package com.zlk.gjj_01.register.lfx.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.lfx.dao.AgentDao;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.util.AgentCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private AgentDao agentDao;

    @RequestMapping(value = "/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping(value = "/toRegister")
    public String toRegister(){
        return "register";
    }

    @RequestMapping(value = "/register")
    @ResponseBody
    public String register(Map map, Agent agent,Unit unit, HttpServletRequest request, String code){
        String checkCode =(String)request.getSession().getAttribute("checkCode");
        checkCode="1";
        code=checkCode;
        if(checkCode.toLowerCase().equals(code.toLowerCase())){
            agent.setAgentName("lfx");
            agent.setCardName("身份证");
            agent.setCardNumber("111111111444444444");
            List<Agent> agentList = loginService.findAll();
            for(Agent a:agentList){
                if(a.getCardNumber().equals(agent.getCardNumber())){
                    map.put("error","该证件号已经注册");
                    return "login";
                }
            }
            agent.setAgentPhone("11111111111");
            unit.setUnitEmail("1111111111@qq.com");
            unit.setUnitName("阿里巴巴");
            agent.setAgentPassword("lfx");
            for(;;) {
                String agentCode=AgentCodeUtil.getAgentCode();
                Agent agent1 = loginService.findAgentByAgentCode(agentCode);
                if (agent1 == null) {
                    agent.setAgentCode(agentCode);
                    break;
                }
            }
            agent.setUnit(unit);
            unit.getAgentList().add(agent);
            loginService.save(agent);
            return "register";
        }else {
            map.put("error","验证码错误");
            return "login";
        }
    }

    @RequestMapping(value = "/login")
    @ResponseBody
    public String login(Agent agent,HttpServletRequest request,String code,Map map){
        String checkCode=(String) request.getSession().getAttribute("checkCode");
        checkCode="1";
        code=checkCode;
        if(checkCode.toLowerCase().equals(code.toLowerCase())){
            agent.setAgentCode("8301193716");
            agent.setAgentPassword("lfx1");
            Agent agent1 = loginService.findAgentByAgentCode(agent.getAgentCode());
            if(agent1==null){
                map.put("error","该用户代码不存在");
                return "login";
            }else if(!(agent1.getAgentPassword()).equals(agent.getAgentPassword())){
                map.put("error","密码错误");
                return "login";
            }else {
                request.getSession().setAttribute("agent", agent1.getAgentName());
                return "success";
            }
        }else {
            map.put("error","验证码错误");
            return "login";
        }
    }
    @RequestMapping(value = "/test")
    @ResponseBody
    public String test(){
        Integer flag1=agentDao.agentAuth("4028f5816df640ee016df641b1b10000");
        System.out.println(flag1);
        return null;
    }
}
