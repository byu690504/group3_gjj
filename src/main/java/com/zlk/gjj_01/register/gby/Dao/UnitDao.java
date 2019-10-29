package com.zlk.gjj_01.register.gby.Dao;

import com.zlk.gjj_01.register.entity.Unit;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UnitDao extends JpaRepository<Unit,String> {

}
