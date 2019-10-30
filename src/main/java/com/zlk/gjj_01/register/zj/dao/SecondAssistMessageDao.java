package com.zlk.gjj_01.register.zj.dao;
/**
 * 二级辅助信息查询Dao
 */

import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public interface SecondAssistMessageDao extends JpaRepository<SecondAssistMessage,String> {
    /*@Query("select secondAssistMessageId from SecondAssistMessage sec where sec.deptName=?1")
    String findSecIdBySecName(String secName);*/
    @Query("from SecondAssistMessage sec where sec.deptCode=?1")
    SecondAssistMessage findSecBySecCode(String deptCode);
    @Query("from SecondAssistMessage sec where sec.secondAssistMessageId=?1")
    SecondAssistMessage findSecById(String secondAssistMessageId);

}
