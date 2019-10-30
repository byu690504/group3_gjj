package com.zlk.gjj_01.register.lfx.service.impl;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;
import com.zlk.gjj_01.register.lfx.dao.AgentDao;
import com.zlk.gjj_01.register.lfx.dao.UnitDao;
import com.zlk.gjj_01.register.lfx.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private AgentDao agentDao;
    @Autowired
    private UnitDao unitDao;

    @Override
    public List<Agent> findAll() {
        return agentDao.findAll();
    }

    @Override
    public Agent save(Agent agent){
        Agent agent1 = agentDao.save(agent);
        return agent1;
    }

    @Override
    public Unit save(Unit unit) {
        return unitDao.saveAndFlush(unit);
    }

    @Override
    public Unit findByUnitName(String unitName) {
        return unitDao.findByUnitName(unitName);
    }

    @Override
    public String findUnitNameByAgentName(String agentName) {
        return agentDao.findUnitNameByAgentName(agentName);
    }

    @Override
    public Agent findAgentByAgentCode(String agentCode) {
        return agentDao.findAgentByAgentCode(agentCode);
    }

    @Override
    public Agent findAgentByAgentName(String agentName) {
        return agentDao.findAgentByAgentName(agentName);
    }

    @Override
    public Agent findAgentByAgentAuth(String agentAuth) {
        return agentDao.findAgentByAgentAuth(agentAuth);
    }
}
