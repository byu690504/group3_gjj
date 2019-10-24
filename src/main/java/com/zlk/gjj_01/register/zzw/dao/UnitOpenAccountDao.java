package com.zlk.gjj_01.register.zzw.dao;

import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/22 10:22
 */
@Repository
public interface UnitOpenAccountDao extends JpaRepository<UnitOpenAccount, String> {

    @Query("from UnitOpenAccount where appropriationUnit = ?1")
    public UnitOpenAccount findUnitOpenAccountByAppropriationUnit(String appropriationUnit);

}
