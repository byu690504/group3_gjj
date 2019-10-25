package com.zlk.gjj_01.register.lfx.service;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitRegister;

public interface UnitRegisterService {
    UnitRegister save(UnitRegister unitRegister);
    UnitRegister findUnitRegisterByUnitId(String unitId);
    UnitRegister findUrByAgentName(String agentName);
    Unit findUnitByUrId(String urId);
}
