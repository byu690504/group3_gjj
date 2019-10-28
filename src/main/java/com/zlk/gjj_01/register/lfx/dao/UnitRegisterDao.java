package com.zlk.gjj_01.register.lfx.dao;

import com.zlk.gjj_01.register.entity.UnitRegister;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitRegisterDao extends JpaRepository<UnitRegister,String> {
    @Query("from UnitRegister ur where ur.unit.unitId = ?1")
    public UnitRegister findUnitRegisterByUnitId(String unitId);
    @Query("from UnitRegister where agentName=?1")
    public UnitRegister findUrByAgentName(String agentName);
}
