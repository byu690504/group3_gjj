package com.zlk.gjj_01.register.zzw.dao;

import com.zlk.gjj_01.register.entity.RemitManager;
import com.zlk.gjj_01.register.entity.UnitBusinessPower;
import org.apache.coyote.ajp.AjpAprProtocol;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author 张照伟
 * @version 1.0
 * @date 2019/10/29 20:33
 */
@Repository
public interface UnitBusinessPowerDao extends JpaRepository<UnitBusinessPower, String> {
}
