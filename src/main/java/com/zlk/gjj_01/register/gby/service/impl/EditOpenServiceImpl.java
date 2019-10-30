package com.zlk.gjj_01.register.gby.service.impl;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import com.zlk.gjj_01.register.gby.Dao.OpendDao;

import com.zlk.gjj_01.register.gby.service.EditOpenService;
import com.zlk.gjj_01.register.lfx.dao.UnitDao;
import com.zlk.gjj_01.register.lfx.dao.UnitRegisterDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EditOpenServiceImpl implements EditOpenService {
    @Autowired
    private OpendDao opendDao;
    @Autowired
    private UnitRegisterDao unitRegisterDao;
    @Autowired
    private UnitDao unitDao;


    @Override
    public UnitOpenAccount findByUrId(String unitOpenAccountId) {
        return opendDao.findByUrId(unitOpenAccountId);
    }

    @Override
    public UnitRegister save(UnitRegister unitRegister) {
        return unitRegisterDao.save(unitRegister);
    }

    @Override
    public Unit save(Unit unit) {
        return unitDao.save(unit);
    }

    @Override
    public UnitOpenAccount save(UnitOpenAccount unitOpenAccount) {
        return opendDao.save(unitOpenAccount);
    }
}
