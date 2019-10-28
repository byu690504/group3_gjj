package com.zlk.gjj_01.register.zj.dao;
/**
 * 缴款管理Dao
 */

import com.zlk.gjj_01.register.entity.RemitInventory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RemitInventoryDao extends JpaRepository<RemitInventory,String> {
    //通过二级辅助信息id查找
    @Query("from RemitInventory rem where rem.secondAssistMessage.secondAssistMessageId=?1")
    List<RemitInventory> findRemBySecId(String secId);
    //通过record查找
    @Query("from RemitInventory r where r.record=?1")
    List<RemitInventory> findByRecord(String record);
    //通过id查找
    @Query("update RemitInventory r set r.empName=?1,r.empNumber=?2,r.empCardNumber=?3,r.empCountry=?4," +
            "r.record=?5,r.moneySource=?6,r.empCardName=?7 where r.remitInventoryId=?1")
    void findRemById(RemitInventory remitInventory);
}
