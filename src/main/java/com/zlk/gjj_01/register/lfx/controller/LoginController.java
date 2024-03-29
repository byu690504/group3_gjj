package com.zlk.gjj_01.register.lfx.controller;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.dao.UnitRegisterDao;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import com.zlk.gjj_01.register.util.AgentCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private UnitRegisterDao unitRegisterDao;

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping(value = "/toIndex")
    public String toIndex(){
        return "index";
    }

    /**
     * 跳转到登陆页面
     * @return
     */
    @RequestMapping(value = "/toLogin")
    public String toLogin(){
        return "login";
    }

    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping(value = "/toRegister")
    public String toRegister(){
        return "register";
    }

    /**
     * 跳转到找回密码页面
     * @return
     */
    @RequestMapping(value = "/toFindPwd")
    public String toFindPwd(){
        return "forgetPasswordByPhone";
    }

    /**
     * 注册页面点击注册
     * @return
     */
    @RequestMapping(value = "/register")
    public ModelAndView register(Agent agent, Unit unit, HttpServletRequest request, String code){
        ModelAndView mv=new ModelAndView();
        String checkCode =(String)request.getSession().getAttribute("checkCode");
        if(checkCode.toLowerCase().equals(code.toLowerCase())){
            List<Agent> agentList = loginService.findAll();
            for(Agent a:agentList){
                if(a.getCardNumber().equals(agent.getCardNumber())){
                    mv.addObject("error","该证件号已被注册");
                    mv.setViewName("register");
                    return mv;
                }
            }
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
            mv.addObject("msg",agent.getAgentCode());
            mv.setViewName("login");
            return mv;
        }else {
            mv.addObject("error","验证码错误");
            mv.setViewName("register");
            return mv;
        }
    }

    /**
     * 登陆页面点击登陆
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(Agent agent,HttpServletRequest request,String code,Map map){
        String checkCode=(String) request.getSession().getAttribute("checkCode");
        if(checkCode.toLowerCase().equals(code.toLowerCase())) {
            if(agent.getAgentAuth()==null){
                Agent agent1 = loginService.findAgentByAgentCode(agent.getAgentCode());
                if (agent1 == null) {
                    map.put("error", "该用户代码不存在");
                    return "login";
                } else if (!(agent1.getAgentPassword()).equals(agent.getAgentPassword())) {
                    map.put("error", "密码错误");
                    return "login";
                } else {
                    UnitRegister ur = unitRegisterDao.findUrByAgentName(agent1.getAgentName());
                    if(ur!=null){
                        request.getSession().setAttribute("urId", ur.getUnitRegisterId());
                    }
                    request.getSession().setAttribute("agent", agent1.getAgentName());
                    return "centre";
                }
            }else {
                Agent agent1 = loginService.findAgentByAgentAuth(agent.getAgentAuth());
                if(agent1==null){
                    map.put("error","该CA证书不存在");
                    return "login";
                }else {
                    UnitRegister ur = unitRegisterDao.findUrByAgentName(agent1.getAgentName());
                    if(ur!=null){
                        request.getSession().setAttribute("urId", ur.getUnitRegisterId());
                    }
                    request.getSession().setAttribute("agent", agent1.getAgentName());
                    return "centre";
                }
            }
        }else {
            map.put("error","验证码错误");
            return "login";
        }
    }

    @RequestMapping(value = "/findPwd")
    public ModelAndView findPwd(String agentPhone){
        ModelAndView mv=new ModelAndView();
        Agent agent = loginService.findAgentByAgentPhone(agentPhone);
        if(agent==null){
            mv.addObject("error","该用户不存在,请核实手机号");
            mv.setViewName("forgetPasswordByPhone");
            return mv;
        }else {
            mv.addObject("agentPhone",agentPhone);
            mv.setViewName("forgetPasswordLaterAlterPassword");
            return mv;
        }
    }

    @RequestMapping(value = "/inputPwd")
    public ModelAndView inputPwd(String agentPassword,String agentPhone){
        ModelAndView mv=new ModelAndView();
        Integer flag = loginService.findPwd(agentPassword, agentPhone);
        mv.addObject("msg1",agentPassword);
        mv.setViewName("login");
        return mv;
    }
}
