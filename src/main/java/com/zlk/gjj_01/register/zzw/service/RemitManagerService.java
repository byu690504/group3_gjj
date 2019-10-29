package com.zlk.gjj_01.register.zzw.service;

import com.zlk.gjj_01.register.entity.RemitManager;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/23 13:32
 */
public interface RemitManagerService {
    RemitManager save(RemitManager remitManager);
    RemitManager findByRemitWay(String remitWay);
    UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit);
}
