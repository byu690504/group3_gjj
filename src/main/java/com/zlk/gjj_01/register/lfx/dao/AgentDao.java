package com.zlk.gjj_01.register.lfx.dao;

import com.zlk.gjj_01.register.entity.Agent;
import org.hibernate.sql.Update;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.Transient;
import javax.transaction.Transactional;

@Repository
public interface AgentDao extends JpaRepository<Agent,String> {
    /**
     *通过用户代码查找经办人
     * @param agentCode
     * @return
     */
    @Query("from Agent where agentCode=?1")
    Agent findAgentByAgentCode(String agentCode);

    /**
     * 通过经办人姓名修改其CA证书
     * @param cert
     * @param agName
     * @return
     */
    @Transactional
    @Modifying
    @Query("update Agent set agentAuth=?1 where agentName=?2")
    Integer agentAuth(String cert,String agName);

    /**
     * 通过经办人姓名查找经办人
     * @param agentName
     * @return
     */
    @Query("from Agent a where a.agentName=?1")
    Agent findAgentByAgentName(String agentName);

    /**
     * 通过经办人姓名查找其单位名
     * @param agentName
     * @return
     */
    @Query("select u.unitName from Unit u,Agent a where a.unit.unitId=u.unitId and a.agentName=?1")
    String findUnitNameByAgentName(String agentName);

    /**
     * 通过CA证书查找其经办人
     * @param agentAuth
     * @return
     */
    @Query("from Agent a where a.agentAuth=?1")
    Agent findAgentByAgentAuth(String agentAuth);
}
