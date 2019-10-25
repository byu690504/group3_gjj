package com.zlk.gjj_01.register.zj.mapper;

import com.zlk.gjj_01.register.entity.RemitInventory;
import com.zlk.gjj_01.register.util.Pagination;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RemitInventoryMapper {
    List<RemitInventory> findRemLimit(Pagination pagination);
    Integer findRemitCount(Pagination pagination);
}
