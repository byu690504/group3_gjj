package com.zlk.gjj_01.register.zj.controller;
/**
 * 汇缴清册
 */

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.util.Pagination;
import com.zlk.gjj_01.register.zj.dao.RemitInventoryDao;
import com.zlk.gjj_01.register.zj.dao.SecondAssistMessageDao;
import com.zlk.gjj_01.register.zj.service.RemitInventoryService;
import com.zlk.gjj_01.register.zzw.dao.UnitOpenAccountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Controller
@RequestMapping(value = "/remit")
public class RemitInventoryController {
    @Autowired
    private RemitInventoryDao remitInventoryDao;
    @Autowired
    private SecondAssistMessageDao secondAssistMessageDao;
    @Autowired
    private UnitOpenAccountDao unitOpenAccountDao;
    @Autowired
    private RemitInventoryService remitInventoryService;
    @RequestMapping(value = "/toList")
    public ModelAndView toList(String record)throws Exception{
        ModelAndView mv=new ModelAndView();
        mv.addObject("record",record);
        mv.setViewName("remitInventory");
        return mv;
    }
    @RequestMapping(value = "/list")
    @ResponseBody
    public Map<String,Object> remList(Pagination pagination)throws Exception{
        pagination.setStartPage((pagination.getPage()-1)*pagination.getLimit());
        List<RemitInventory> List=remitInventoryService.findRemLimit(pagination);
        Integer count=remitInventoryService.findRemitCount(pagination);
        Map<String,Object> map=new HashMap<>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",List);
        return map;
    }
    @RequestMapping(value = "/beforeRem")
    @ResponseBody
    public String check(HttpServletRequest request){
        String urId = (String) request.getSession().getAttribute("urId");
        UnitOpenAccount unitOpenAccount=unitOpenAccountDao.findUoaIdByUrId(urId);
        if(unitOpenAccount==null){
            System.out.println("该单位不是开户单位，不可进行汇缴清册编辑");
            return null;
        }else {
            return "remitInventory";//跳转添加页面
        }
    }
    /*@RequestMapping(value = "/add")
    public String add(HttpServletRequest request,RemitInventory remitInventory,SecondAssistMessage secondAssistMessage){
        UnitRegister unitRegister=new UnitRegister();
        String urId= (String) request.getSession().getAttribute("urId");
        unitRegister.setUnitRegisterId(urId);
        SecondAssistMessage sec = secondAssistMessageDao.findSecBySecCode(secondAssistMessage.getDeptCode());
        secondAssistMessage.setSecondAssistMessageId(sec.getSecondAssistMessageId());
        remitInventory.setSecondAssistMessage(secondAssistMessage);
        remitInventory.setUnitRegister(unitRegister);
        remitInventoryDao.save(remitInventory);
        return "remitInventory";
    }*/
    @RequestMapping(value = "/add")
    public String add(RemitInventory remitInventory){
        remitInventoryDao.save(remitInventory);
        return "remitInventory";
    }
    @RequestMapping(value = "/update")
    @ResponseBody
    public void update(RemitInventory remitInventory) {
        /*ModelAndView mv=new ModelAndView();
        Integer result=remitInventoryService.updateRem(remitInventory);
        if(result==1){
            mv.setViewName("remitInventory");
            return mv;
        }else{
            return null;
        }*/
        remitInventoryDao.findRemById(remitInventory);
    }

}