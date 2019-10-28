package com.zlk.gjj_01.register.lfx.dao;

import com.zlk.gjj_01.register.entity.Unit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitDao extends JpaRepository<Unit,String> {
    /**
     * 通过单位名称查找单位
     * @param unitName
     * @return
     */
    @Query("from Unit where unitName=?1")
    Unit findByUnitName(String unitName);

    /**
     * 通过单位登记号查找对应单位
     * @param urId
     * @return
     */
    @Query("from Unit u where u.unitRegister.unitRegisterId=?1")
    Unit findUnitByUrId(String urId);
}
