package com.zlk.gjj_01.register.gby.Dao;

import com.zlk.gjj_01.register.entity.UnitRegister;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegisterDao extends JpaRepository<UnitRegister,String> {


}
