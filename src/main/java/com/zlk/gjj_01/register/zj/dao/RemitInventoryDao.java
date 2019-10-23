package com.zlk.gjj_01.register.zj.dao;

import com.zlk.gjj_01.register.entity.RemitInventory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RemitInventoryDao extends JpaRepository<RemitInventory,String> {
    @Query("from RemitInventory rem where rem.secondAssistMessage.secondAssistMessageId=?1")
    List<RemitInventory> findRemBySecId(String secId);
}
