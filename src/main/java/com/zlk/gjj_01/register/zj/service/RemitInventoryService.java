package com.zlk.gjj_01.register.zj.service;

public interface RemitInventoryService {
    //委托收款
    void onsignmentCollection();
    //主动汇款
    void activeRemittance();
    //转账支票
    void transferCheque();
    //现金缴款
    void cashPayment();
    //财政统发
    void fiscalUnification();
    //转账交款
    void transferPayment();
    //在线支付
    void onlinePayment();


}
