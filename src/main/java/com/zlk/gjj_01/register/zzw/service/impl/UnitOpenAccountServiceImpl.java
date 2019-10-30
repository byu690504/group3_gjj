package com.zlk.gjj_01.register.zzw.service.impl;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.lfx.dao.UnitDao;
import com.zlk.gjj_01.register.zzw.dao.UnitOpenAccountDao;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 11:02
 */
@Service
public class UnitOpenAccountServiceImpl implements UnitOpenAccountService {
    @Autowired
    private UnitOpenAccountDao unitOpenAccountDao;
    @Autowired
    private UnitDao unitDao;

    @Override
    public List<UnitOpenAccount> findAll() {
        return unitOpenAccountDao.findAll();
    }

    @Override
    public UnitOpenAccount save(UnitOpenAccount unitOpenAccount) {

        return unitOpenAccountDao.save(unitOpenAccount);
    }

    @Override
    public Unit save(Unit unit) {
        return unitDao.save(unit);
    }

    @Override
    public Agent findAgentByAgentName(String agentName) {
        return unitOpenAccountDao.findAgentByAgentName(agentName);
    }

    @Override
    public UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit) {
        return unitOpenAccountDao.findUnitOpenAccountByAppropriationUnit(appropriationUnit);
    }

    @Override
    public UnitOpenAccount findUnitByUrId(String urId) {
        return unitOpenAccountDao.findUnitByUrId(urId);
    }

    @Override
    public Unit findUnitByUnitName(String unitName) {
        return unitOpenAccountDao.findUnitByUnitName(unitName);
    }
}
