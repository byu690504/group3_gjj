package com.zlk.gjj_01.register.zj.dao;

import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SecondAssistMessageDao extends JpaRepository<SecondAssistMessage,String> {
}
