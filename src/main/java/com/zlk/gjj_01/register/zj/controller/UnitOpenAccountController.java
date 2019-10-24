package com.zlk.gjj_01.register.zj.controller;

import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.zj.dao.UnitOpenAccountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/open")
public class UnitOpenAccountController {
    @Autowired
    private UnitOpenAccountDao unitOpenAccountDao;
    @RequestMapping(value = "/add")
    @ResponseBody
    public String add(UnitOpenAccount unitOpenAccount){
        UnitOpenAccount unitOpenAccount1=new UnitOpenAccount();
        unitOpenAccount1.setBusinessAgentDept("外包");
        unitOpenAccountDao.save(unitOpenAccount1);
        return null;
    }
}
