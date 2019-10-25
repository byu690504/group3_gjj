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
    //通过二级辅助信息查找
    @Query("from RemitInventory rem where rem.secondAssistMessage.secondAssistMessageId=?1")
    List<RemitInventory> findRemBySecId(String secId);
    //通过员工姓名查找缴费记录
    @Query("select remitInventoryId from RemitInventory r where r.empName=?1")
    List<RemitInventory> findRemByName(String empName);
    //通过缴费号查找员工姓名
    @Query("select r.empName from RemitInventory r where r.remitInventoryId=?1")
    String findNameById(String remId);
    //通过缴费号查找员工身份类型
    @Query("select r.empCardName from RemitInventory r where r.remitInventoryId=?1")
    String findCardNameById(String remId);
    //通过缴费号查找员工身份证号
    @Query("select r.empCardNumber from RemitInventory r where r.remitInventoryId=?1")
    String findNumById(String remId);
    /*//分页查询数据
    @Transactional
    @Modifying
    @Query(value = "select * from remit_inventory limit 0,1",nativeQuery = true)
    List<RemitInventory> findRemitInventoryLimit(Integer startPage, Integer limit);
    //分页查询总数
    @Transactional
    @Modifying
    @Query(value = "select count(remit_inventory_id) from remit_inventory limit 0,1",nativeQuery = true)
    Integer findRemitInventoryCount(Integer startPage, Integer limit);*/
    @Query("from RemitInventory r where r.record=?1")
    List<RemitInventory> findByRecord(String record);
}
