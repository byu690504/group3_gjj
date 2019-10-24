package com.zlk.gjj_01.register.zj.service.Impl;

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.zj.dao.RemitInventoryDao;
import com.zlk.gjj_01.register.zj.service.SecondAssistMessageService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class SecondAssistMessageServiceImpl implements SecondAssistMessageService {
    @Resource
    RemitInventoryDao remitInventoryDao;
    /*@Override
    public Page<RemitInventory> findRemitInventoryLimit(String record, Pageable pageable) {
        return remitInventoryDao.findRemitInventoryLimit(record,pageable);
    }*/
}
