package com.zlk.gjj_01.register.lfx.service.impl;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.dao.UnitDao;
import com.zlk.gjj_01.register.lfx.dao.UnitRegisterDao;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UnitRegisterServiceImpl implements UnitRegisterService {
    @Autowired
    private UnitRegisterDao unitRegisterDao;
    @Autowired
    private UnitDao unitDao;

    @Override
    public UnitRegister save(UnitRegister unitRegister) {

        return unitRegisterDao.save(unitRegister);
    }

    @Override
    public UnitRegister findUnitRegisterByUnitId(String unitId) {
        return unitRegisterDao.findUnitRegisterByUnitId(unitId);
    }

    @Override
    public UnitRegister findUrByAgentName(String agentName) {
        return unitRegisterDao.findUrByAgentName(agentName);
    }

    @Override
    public Unit findUnitByUrId(String urId) {
        return unitDao.findUnitByUrId(urId);
    }
}
