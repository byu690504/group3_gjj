package com.zlk.gjj_01.register.zzw.service;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;

import java.util.List;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 10:55
 */
public interface UnitOpenAccountService {
    List<UnitOpenAccount> findAll();
    UnitOpenAccount save(UnitOpenAccount unitOpenAccount);
    Unit save(Unit unit);
    Unit findUnitByUnitName(String unitName);
    Agent findAgentByAgentName(String agentName);
    UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit);
    UnitOpenAccount findUnitByUrId(String urId);
}
