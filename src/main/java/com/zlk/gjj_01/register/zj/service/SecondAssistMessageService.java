package com.zlk.gjj_01.register.zj.service;


import com.zlk.gjj_01.register.entity.SecondAssistMessage;
import com.zlk.gjj_01.register.util.Pagination;

import java.util.List;

public interface SecondAssistMessageService {
    List<SecondAssistMessage> findSecondLimit(Pagination pagination);
    Integer findSecondCount(Pagination pagination);
}
