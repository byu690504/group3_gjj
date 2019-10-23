package com.zlk.gjj_01.register.zj.controller;
/**
 * 汇缴清册
 */

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.zj.dao.RemitInventoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/remit")
public class RemitInventoryController {
    @Autowired
    private RemitInventoryDao remitInventoryDao;
    @RequestMapping(value = "/add")
    @ResponseBody
    public String add(RemitInventory remitInventory){
        RemitInventory remitInventory1=new RemitInventory();
        remitInventory1.setEmpCardNumber("100001");
        remitInventory1.setEmpCardName("小张");
        remitInventory1.setEmpCardName("身份证");
        remitInventory1.setEmpCountry("中国");
        remitInventory1.setEmpCardNumber("41000000000000000000X");
        remitInventory1.setMoneySource("");//资金来源
        remitInventory1.setEmpDepositeBase("");//缴存基数
        return null;
    }
}
