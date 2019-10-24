package com.zlk.gjj_01.register.lfx.service.impl;

import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.lfx.dao.UnitRegisterDao;
import com.zlk.gjj_01.register.lfx.service.UnitRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UnitRegisterServiceImpl implements UnitRegisterService {
    @Autowired
    private UnitRegisterDao unitRegisterDao;

    @Override
    public UnitRegister save(UnitRegister unitRegister) {
        return unitRegisterDao.save(unitRegister);
    }

    @Override
    public UnitRegister findUnitRegisterByUnitId(String unitId) {
        return unitRegisterDao.findUnitRegisterByUnitId(unitId);
    }
}
