package com.zlk.gjj_01.register.zj.service.Impl;

import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.util.Pagination;
import com.zlk.gjj_01.register.zj.mapper.SecondAssistMessageMapper;
import com.zlk.gjj_01.register.zj.service.SecondAssistMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SecondAssistMessageServiceImpl implements SecondAssistMessageService {
    @Autowired
    private SecondAssistMessageMapper secondAssistMessageMapper;
    @Override
    public List<SecondAssistMessage> findSecondLimit(Pagination pagination) {
        return secondAssistMessageMapper.findSecondLimit(pagination);
    }

    @Override
    public Integer findSecondCount(Pagination pagination) {
        return secondAssistMessageMapper.findSecondCount(pagination);
    }
}
