package com.zlk.gjj_01.register.zj.controller;
/**
 * 汇缴清册
 */

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.util.DepositeBaseUtil;
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
        /*pagination.setRecord("是");*/
        /*pagination.setPage(1);
        pagination.setLimit(2);*/
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
    @RequestMapping(value = "/add")
    public String add(HttpServletRequest request,RemitInventory remitInventory,SecondAssistMessage secondAssistMessage){
        UnitRegister unitRegister=new UnitRegister();
        /*String urId= (String) request.getSession().getAttribute("urId");*/
        unitRegister.setUnitRegisterId("2");
        /*unitRegister.setUnitRegisterId(urId);*/
        SecondAssistMessage sec = secondAssistMessageDao.findSecBySecCode(secondAssistMessage.getDeptCode());
        secondAssistMessage.setSecondAssistMessageId(sec.getSecondAssistMessageId());
        remitInventory.setSecondAssistMessage(secondAssistMessage);
        remitInventory.setUnitRegister(unitRegister);
        remitInventoryDao.save(remitInventory);
        return "remitInventory";
    }
    @RequestMapping(value = "/update")
    @ResponseBody
    public String update(RemitInventory remitInventory) {
        //系统以“姓名”、“证件名称”、“证件号码”为关键字在中心系统数据库中查找是否存在相同记录
        String remId = remitInventory.getRemitInventoryId();
        if (remitInventoryDao.findNameById(remId).equals(remitInventory.getEmpName()) &&
                remitInventoryDao.findCardNameById(remId).equals(remitInventory.getEmpCardName()) &&
                remitInventoryDao.findNumById(remId).equals(remitInventory.getEmpCardNumber())) {
            //如存在三项同时相同的记录即判定为已办理过个人登记
            System.out.println("已办理过个人登记");
            RemitInventory remitInventory1 = remitInventoryDao.findById(remitInventory.getRemitInventoryId()).get();
                /*remitInventory1.setEmpName("阿一");
                remitInventory1.setEmpNumber("100002");*/
            remitInventoryDao.save(remitInventory1);
        } else {
            //若不存在姓名、证件名称及证件号码三项同时相同的记录，即判定为未办理过个人登记
            //调用个人登记方法
            System.out.println("***无匹配信息，检查录入信息");
            //限制五次登录次数
            DepositeBaseUtil.login();
            //生成个人登记号
            String personalId = DepositeBaseUtil.getUUID();
            System.out.println(personalId);
            return null;
        }
        return null;
    }
}