package com.zlk.gjj_01.register.zzw.service;

import com.zlk.gjj_01.register.entity.UnitOpenAccount;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 10:55
 */
public interface UnitOpenAccountService {
    
    UnitOpenAccount save(UnitOpenAccount unitOpenAccount);
    UnitOpenAccount save1(UnitOpenAccount unitOpenAccount);
    UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit);
}
