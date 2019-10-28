package com.zlk.gjj_01.register.zzw.dao;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 10:22
 */
@Repository
public interface UnitOpenAccountDao extends JpaRepository<UnitOpenAccount, String> {

    @Query("from UnitOpenAccount where appropriationUnit = ?1")
    public UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit);

    @Query("from UnitOpenAccount where unitOpenAccountId = ?1")
    public UnitOpenAccount findUnitOpenAccountByUnitOpenAccountId(String unitOpenAccountId);

    @Transactional
    @Modifying
    @Query("update Agent set agentAuth=?1 where agentName=?2")
    Integer agentAuth(String cert, String agName);
    @Query("from Agent a where a.agentName=?1")
    Agent findAgentByAgentName(String agentName);
    @Query("from UnitOpenAccount u where u.unitRegister.unitRegisterId=?1")
    UnitOpenAccount findUoaIdByUrId(String unitRegisterId);

    @Query("from Unit u where u.unitName=?1")
    Unit findUnitByUnitName(String unitName);
}
