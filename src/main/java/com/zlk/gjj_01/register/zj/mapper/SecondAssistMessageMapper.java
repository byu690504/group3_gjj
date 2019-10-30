package com.zlk.gjj_01.register.zj.mapper;

import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.util.Pagination;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SecondAssistMessageMapper {
    List<SecondAssistMessage> findSecondLimit(Pagination pagination);
    Integer findSecondCount(Pagination pagination);
    Integer updateSec(SecondAssistMessage secondAssistMessage);
}
