package com.zlk.gjj_01.register.lfx.service;

import com.zlk.gjj_01.register.entity.Agent;
import com.zlk.gjj_01.register.entity.Unit;

import java.util.List;

public interface LoginService {
    /**
     * 查找全部经办人信息
     * @return
     */
    List<Agent> findAll();

    /**
     * 保存经办人信息
     * @param agent
     * @return
     */
    Agent save(Agent agent);

    /**
     * 保存单位信息
     * @param unit
     * @return
     */
    Unit save(Unit unit);

    /**
     * 通过单位名称查找其单位信息
     * @param unitName
     * @return
     */
    Unit findByUnitName(String unitName);

    /**
     * 通过经办人姓名查找其单位名称
     * @param agentName
     * @return
     */
    String findUnitNameByAgentName(String agentName);

    /**
     * 通过用户代码查找其经办人信息
     * @param agentCode
     * @return
     */
    Agent findAgentByAgentCode(String agentCode);

    /**
     * 通过经办人姓名查找其经办人信息
     * @param agentName
     * @return
     */
    Agent findAgentByAgentName(String agentName);

    /**
     * 通过CA证书查找其经办人信息
     * @param agentAuth
     * @return
     */
    Agent findAgentByAgentAuth(String agentAuth);
}
