package com.zlk.gjj_01.register.zzw.service.impl;

import com.zlk.gjj_01.register.entity.UnitBusinessPower;
import com.zlk.gjj_01.register.zzw.dao.UnitBusinessPowerDao;
import com.zlk.gjj_01.register.zzw.service.UnitBusinessPowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/29 20:35
 */
@Service
public class UnitBusinessPowerServiceImpl implements UnitBusinessPowerService {
   @Autowired
    private UnitBusinessPowerDao unitBusinessPowerDao;

    @Override
    public UnitBusinessPower save(UnitBusinessPower unitBusinessPower) {
        return unitBusinessPowerDao.save(unitBusinessPower);
    }
}
