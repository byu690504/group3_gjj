package com.zlk.gjj_01.register.zj.controller;
/**
 * 二级管理辅助信息
 */

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.zj.dao.RemitInventoryDao;
import com.zlk.gjj_01.register.zj.dao.SecondAssistMessageDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/second")
public class SecondAssistMessageController {
    @Autowired
    private SecondAssistMessageDao secondAssistMessageDao;
    @Autowired
    private RemitInventoryDao remitInventoryDao;

    @RequestMapping(value = "/add")
    @ResponseBody
    public String add(SecondAssistMessage secondAssistMessage){
        SecondAssistMessage secondAssistMessage1=new SecondAssistMessage();
        secondAssistMessage1.setDeptName("销售部2");
        secondAssistMessage1.setDeptCode("XS");
        secondAssistMessage1.setDeptNumber("006");
        secondAssistMessageDao.saveAndFlush(secondAssistMessage1);
        return null;
    }
    @RequestMapping(value = "/update")
    @ResponseBody
    public String update(SecondAssistMessage secondAssistMessage){
        SecondAssistMessage secondAssistMessage1=secondAssistMessageDao.findById("402869816df28f8a016df29124400000").get();
        secondAssistMessage1.setDeptName("食堂");
        secondAssistMessage1.setDeptCode("ST");
        secondAssistMessage1.setDeptNumber("006");
        secondAssistMessageDao.save(secondAssistMessage1);
        return null;
    }
    @RequestMapping(value = "/delete")
    @ResponseBody
    public String delete(String secondAssistMessageId, Map map){
        //联表查询 两个表
        //判断是否为空
        //调用方法 再删除
        secondAssistMessageId="402869816df29413016df29452db0000";
        List<RemitInventory> remList=remitInventoryDao.findRemBySecId(secondAssistMessageId);
        if(remList.size()!=0){
            map.put("error","仍有职工在该部门，不允许删除，到部门维护中修改后再删除");
            return null;
        }else {
            secondAssistMessageDao.deleteById(secondAssistMessageId);
        }
        return null;
    }
}