package com.zlk.gjj_01.register.zzw.dao;

import com.zlk.gjj_01.register.entity.RemitManager;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/23 9:29
 */
@Repository
public interface RemitManagerDao extends JpaRepository<RemitManager, String> {
    @Query("from RemitManager where remitWay=?1")
    RemitManager findByRemitWay(String remitWay);
    @Query("from UnitOpenAccount where appropriationUnit = ?1")
    public UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit);
}
