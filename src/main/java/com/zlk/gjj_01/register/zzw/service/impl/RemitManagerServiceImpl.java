package com.zlk.gjj_01.register.zzw.service.impl;

import com.zlk.gjj_01.register.entity.RemitManager;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.zzw.dao.RemitManagerDao;
import com.zlk.gjj_01.register.zzw.service.RemitManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/23 13:34
 */
@Service
public class RemitManagerServiceImpl implements RemitManagerService {
    @Autowired
    private RemitManagerDao remitManagerDao;

    @Override
    public RemitManager save(RemitManager remitManager) {
        return remitManagerDao.save(remitManager);
    }

    @Override
    public RemitManager findByRemitWay(String remitWay) {
        return remitManagerDao.findByRemitWay(remitWay);
    }

    @Override
    public UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit) {
        return remitManagerDao.findUnitOpenAccountByAppropriationUnit(appropriationUnit);
    }
}
