package com.zlk.gjj_01.register.lfx.service;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitRegister;

public interface UnitRegisterService {
    /**
     * 保存单位登记信息
     * @param unitRegister
     * @return
     */
    UnitRegister save(UnitRegister unitRegister);

    /**
     * 通过单位ID查找单位登记信息
     * @param unitId
     * @return
     */
    UnitRegister findUnitRegisterByUnitId(String unitId);

    /**
     * 通过经办人姓名查找登记信息
     * @param agentName
     * @return
     */
    UnitRegister findUrByAgentName(String agentName);

    /**
     * 通过单位登记号查找单位信息
     * @param urId
     * @return
     */
    Unit findUnitByUrId(String urId);
}
