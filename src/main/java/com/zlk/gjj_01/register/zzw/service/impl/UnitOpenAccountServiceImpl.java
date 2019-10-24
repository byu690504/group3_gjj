package com.zlk.gjj_01.register.zzw.service.impl;

import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.zzw.dao.UnitOpenAccountDao;
import com.zlk.gjj_01.register.zzw.service.UnitOpenAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 11:02
 */
@Service
public class UnitOpenAccountServiceImpl implements UnitOpenAccountService {
    @Autowired
    private UnitOpenAccountDao unitOpenAccountDao;

    @Override
    public UnitOpenAccount save(UnitOpenAccount unitOpenAccount) {

        return unitOpenAccountDao.save(unitOpenAccount);
    }

    @Override
    public UnitOpenAccount save1(UnitOpenAccount unitOpenAccount) {
        return unitOpenAccountDao.save(unitOpenAccount);
    }

    @Override
    public UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit) {
        return unitOpenAccountDao.findUnitOpenAccountByAppropriationUnit(appropriationUnit);
    }
}
