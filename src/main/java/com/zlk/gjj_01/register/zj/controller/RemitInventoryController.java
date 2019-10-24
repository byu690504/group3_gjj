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
import com.zlk.gjj_01.register.zj.dao.UnitOpenAccountDao;
import com.zlk.gjj_01.register.zj.service.RemitInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
    @RequestMapping(value = "/toList")
    public String toList()throws Exception{
        return "beforeRem";
    }
    @RequestMapping(value = "/beforeRem")
    @ResponseBody
    public String check(String unitRegisterId){
        unitRegisterId="1";
        UnitOpenAccount unitOpenAccount=unitOpenAccountDao.findUoaIdByUrId(unitRegisterId);
        if(unitOpenAccount==null){
            System.out.println("该单位不是开户单位，不可进行汇缴清册编辑");
        }else {
            return "addList";//跳转添加页面
        }
        return null;
    }
    @RequestMapping(value = "/add")
    @ResponseBody
    public String add(){
        UnitRegister unitRegister=new UnitRegister();
        unitRegister.setUnitRegisterId("2");
        SecondAssistMessage secondAssistMessage=new SecondAssistMessage();
        secondAssistMessage.setDeptName("销售部3");
        String secId = secondAssistMessageDao.findSecIdBySecName(secondAssistMessage.getDeptName());
        secondAssistMessage.setSecondAssistMessageId(secId);
        RemitInventory remitInventory1=new RemitInventory();
        remitInventory1.setEmpCardNumber("410004444X");
        remitInventory1.setEmpName("小刘");
        remitInventory1.setEmpCardName("身份证");
        remitInventory1.setEmpCountry("中国");
        remitInventory1.setRecord("是");
        remitInventory1.setEmpDepositeBase(DepositeBaseUtil.mothod());
        remitInventory1.setSecondAssistMessage(secondAssistMessage);
        remitInventory1.setUnitRegister(unitRegister);
        remitInventoryDao.save(remitInventory1);
        return null;
    }
    /*@RequestMapping(value = "/update")
    @ResponseBody
    public String update(){
        //通过员工姓名和代办部门判断该单位是否为新开户单位
        String businessAgentDept="租赁";
        String empName="阿华";
        List<UnitOpenAccount> unitOpenAccounts=unitOpenAccountDao.findUnitByDept(businessAgentDept);
        //System.out.println(unitOpenAccounts.toString());
        List<RemitInventory> remitInventories=remitInventoryDao.findRemByName(empName);
        //System.out.println(remitInventories.toString());
        if(unitOpenAccounts.size() ==0 || remitInventories.size() !=0){
            System.out.println("该单位不是开户单位，不可进行汇缴清册编辑");
            return null;
        }else if(unitOpenAccounts.size() !=0 && remitInventories.size() ==0){
            //系统以“姓名”、“证件名称”、“证件号码”为关键字在中心系统数据库中查找是否存在相同记录
            RemitInventory remitInventory=new RemitInventory();
            remitInventory.setEmpName("小华");
            remitInventory.setEmpCardNumber("41000000000000000000X");
            remitInventory.setEmpCardName("身份证");
            String remId="402869816df784e2016df7851a9a0000";
            if(remitInventoryDao.findNameById(remId).equals(remitInventory.getEmpName()) &&
            remitInventoryDao.findCardNameById(remId).equals(remitInventory.getEmpCardName()) &&
            remitInventoryDao.findNumById(remId).equals(remitInventory.getEmpCardNumber())){
                //如存在三项同时相同的记录即判定为已办理过个人登记
                System.out.println("已办理过个人登记");
                RemitInventory remitInventory1=remitInventoryDao.findById("402869816df784e2016df7851a9a0000").get();
                remitInventory1.setEmpName("阿一");
                remitInventory1.setEmpNumber("100002");
                remitInventoryDao.save(remitInventory1);
            }else {
                //若不存在姓名、证件名称及证件号码三项同时相同的记录，即判定为未办理过个人登记
                //调用个人登记方法
                System.out.println("***无匹配信息，检查录入信息");
                //限制五次登录次数
                DepositeBaseUtil.login();
                //生成个人登记号
                String personalId=DepositeBaseUtil.getUUID();
                System.out.println(personalId);
                return null;
            }
        }
        return null;
    }*/
    @RequestMapping(value = "/list")
    @ResponseBody
    public Page<RemitInventory> list(Pagination pagination){
        Map map=new HashMap();
        pagination.setStartPage(1);
        pagination.setLimit(2);
        /*List<RemitInventory> remList = remitInventoryDao.findRemitInventoryLimit(pagination.getStartPage(), pagination.getLimit());
        Integer count = remitInventoryDao.findRemitInventoryCount(pagination.getStartPage(), pagination.getLimit());
        System.out.println(count);*/
        Page<RemitInventory> remList = remitInventoryDao.findAll(new PageRequest(pagination.getStartPage(), pagination.getLimit()));
        for(RemitInventory r:remList){
            System.out.println(r.getRemitInventoryId());
        }
        /*map.put("code","0");
        map.put("data",remList);
        map.put("count",remList.getSize());*/
        return remList;
    }
    @RequestMapping(value = "/find")
    @ResponseBody
    public boolean find(String record){
        record="是";
        if(){

        }else{

        }
    }
    return null;
}