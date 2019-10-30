package com.zlk.gjj_01.register.zj.service.Impl;

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.util.Pagination;
import com.zlk.gjj_01.register.zj.mapper.RemitInventoryMapper;
import com.zlk.gjj_01.register.zj.service.RemitInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RemitInventoryServiceImpl implements RemitInventoryService {
    @Autowired
    private RemitInventoryMapper remitInventoryMapper;
    @Override
    public List<RemitInventory> findRemLimit(Pagination pagination) {
        return remitInventoryMapper.findRemLimit(pagination);
    }

    @Override
    public Integer findRemitCount(Pagination pagination) {
        return remitInventoryMapper.findRemitCount(pagination);
    }

    @Override
    public Integer updateRem(RemitInventory remitInventory) {
        return remitInventoryMapper.updateRem(remitInventory);
    }
}
