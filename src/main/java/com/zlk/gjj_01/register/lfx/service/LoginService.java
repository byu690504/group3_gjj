package com.zlk.gjj_01.register.lfx.service;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;

import java.util.List;

public interface LoginService {
    List<Agent> findAll();
    Agent save(Agent agent);
    Unit save(Unit unit);
    Unit findByUnitName(String unitName);
    Agent findAgentByAgentCode(String agentCode);
    Agent findAgentByAgentName(String agentName);
    Agent findAgentByAgentAuth(String agentAuth);
}
