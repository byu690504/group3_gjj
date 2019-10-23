package com.zlk.gjj_01.register.lfx.dao;

import com.zlk.gjj_01.register.entity.Unit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitDao extends JpaRepository<Unit,String> {
    @Query("from Unit where unitName=?1")
    Unit findByUnitName(String unitName);
}
