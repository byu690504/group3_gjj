package com.zlk.gjj_01.register.lfx.dao;

import com.zlk.gjj_01.register.entity.UnitRegister;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitRegisterDao extends JpaRepository<UnitRegister,String> {
    /**
     * 通过单位ID查找其对应单位登记信息
     * @param unitId
     * @return
     */
    @Query("from UnitRegister ur where ur.unit.unitId = ?1")
    public UnitRegister findUnitRegisterByUnitId(String unitId);

    /**
     * 通过经办人姓名查找其单位登记信息
     * @param agentName
     * @return
     */
    @Query("from UnitRegister where agentName=?1")
    public UnitRegister findUrByAgentName(String agentName);
}
