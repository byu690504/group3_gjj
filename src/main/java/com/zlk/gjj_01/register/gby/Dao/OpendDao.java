package com.zlk.gjj_01.register.gby.Dao;

import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OpendDao extends JpaRepository<UnitOpenAccount ,String>{
    /*  通过单位登记号查找对应单位开户号*/

    @Query("from UnitOpenAccount u where u.unitRegister.unitRegisterId=?1")
    UnitOpenAccount findByUrId(String unitOpenAccountId);



}
