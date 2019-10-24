package com.zlk.gjj_01.register.lfx.dao;

import com.zlk.gjj_01.register.entity.Agent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AgentDao extends JpaRepository<Agent,String> {
    @Query("select agentPassword from Agent where agentCode=?1")
    String findAgentByAgentCode(String agentCode);
}
