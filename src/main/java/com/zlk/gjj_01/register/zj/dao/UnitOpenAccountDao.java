package com.zlk.gjj_01.register.zj.dao;
/**
 * 单位开户Dao
 */

import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitOpenAccountDao extends JpaRepository<UnitOpenAccount,String> {
    //通过单位登记号查找开户号
    @Query("from UnitOpenAccount u where u.unitRegister.unitRegisterId=?1")
    UnitOpenAccount findUoaIdByUrId(String unitRegisterId);
}
