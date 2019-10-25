package com.zlk.gjj_01.register.zj.controller;
/**
 * 二级管理辅助信息
 */

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.util.Pagination;
import com.zlk.gjj_01.register.zj.dao.RemitInventoryDao;
import com.zlk.gjj_01.register.zj.dao.SecondAssistMessageDao;
import com.zlk.gjj_01.register.zj.service.SecondAssistMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/second")
public class SecondAssistMessageController {
    @Autowired
    private SecondAssistMessageDao secondAssistMessageDao;
    @Autowired
    private RemitInventoryDao remitInventoryDao;
    @Autowired
    private SecondAssistMessageService secondAssistMessageService;
    @RequestMapping(value = "/toList")
    public String toList(){
        return "secondaryManage";
    }
    @RequestMapping(value = "/list")
    @ResponseBody
    public Map<String,Object> secList(Pagination pagination)throws Exception{
        pagination.setStartPage((pagination.getPage()-1)*pagination.getLimit());
        List<SecondAssistMessage> List=secondAssistMessageService.findSecondLimit(pagination);
        Integer count=secondAssistMessageService.findSecondCount(pagination);
        Map<String,Object> map=new HashMap<>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",List);
        return map;
    }
    @RequestMapping(value = "/add")
    public String add(HttpServletRequest httpServletRequesta,SecondAssistMessage secondAssistMessage){
        /*SecondAssistMessage secondAssistMessage1=new SecondAssistMessage();
        *//*secondAssistMessage1.setDeptName("销售部3");
        secondAssistMessage1.setDeptCode("XS3");
        secondAssistMessage1.setDeptNumber("007");*//*
        RemitInventory remitInventory=new RemitInventory();
        *//*remitInventory.setEmpName("小赵");*//*
        remitInventory.setSecondAssistMessage(secondAssistMessage1);
        secondAssistMessage1.getRemitInventoryList().add(remitInventory);*/
        secondAssistMessageDao.save(secondAssistMessage);
        return "secondaryManage";

    }
    @RequestMapping(value = "/update")
    @ResponseBody
    public Map<String,Object> update(String secondAssistMessageId){
        List<SecondAssistMessage> secList = secondAssistMessageDao.findSecById(secondAssistMessageId);
        return null;
    }
    @RequestMapping(value = "/delete")
    @ResponseBody
    public String delete(String secondAssistMessageId, Map map){
        //联表查询 两个表
        //判断是否为空
        //调用方法 再删除
        /*secondAssistMessageId="402869816df37044016df37163d60000";*/
        List<RemitInventory> remList=remitInventoryDao.findRemBySecId(secondAssistMessageId);
        if(remList.size()!=0){
            map.put("error","仍有职工在该部门，不允许删除，到部门维护中修改后再删除");
            System.out.println("删除失败");
            return null;
        }else {
            secondAssistMessageDao.deleteById(secondAssistMessageId);
            System.out.println("删除成功");
        }
        return null;
    }
}