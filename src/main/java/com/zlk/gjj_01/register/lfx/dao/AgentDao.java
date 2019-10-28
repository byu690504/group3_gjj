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
     *
     * @param agentCode
     * @return
     */
    @Query("from Agent where agentCode=?1")
    Agent findAgentByAgentCode(String agentCode);
    @Transactional
    @Modifying
    @Query("update Agent set agentAuth=?1 where agentName=?2")
    Integer agentAuth(String cert,String agName);
    @Query("from Agent a where a.agentName=?1")
    Agent findAgentByAgentName(String agentName);
    @Query("from Agent a where a.agentAuth=?1")
    Agent findAgentByAgentAuth(String agentAuth);
}
