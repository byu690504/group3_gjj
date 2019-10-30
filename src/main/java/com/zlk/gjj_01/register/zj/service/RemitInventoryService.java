package com.zlk.gjj_01.register.zj.service;

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.util.Pagination;

import java.util.List;

public interface RemitInventoryService {
    List<RemitInventory> findRemLimit(Pagination pagination);
    Integer findRemitCount(Pagination pagination);
    Integer updateRem(RemitInventory remitInventory);
}
