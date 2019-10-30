package com.zlk.gjj_01.register.gby.service;

import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.entity.UnitOpenAccount;
import com.zlk.gjj_01.register.entity.UnitRegister;
import org.springframework.data.jpa.repository.Query;

public interface EditOpenService {

    /*  通过单位登记号查找对应单位开户号*/
    @Query("from UnitOpenAccount u where u.unitRegister.unitRegisterId=?1")
    UnitOpenAccount findByUrId(String unitOpenAccountId);

    /*保存单位登记信息*/
    UnitRegister save(UnitRegister unitRegister);

    /*保存单位信息*/
    Unit  save(Unit unit);

    /*保存开户信息*/
    UnitOpenAccount save(UnitOpenAccount unitOpenAccount);

}
