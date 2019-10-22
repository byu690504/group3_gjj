package com.zlk.gjj_01.register.zj.controller;
/**
 * 缴费方式控制类
 */

import com.zlk.gjj_01.register.zj.service.RemitInventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/remitInventory")
public class RemitInventoryController {
    @Autowired
    private RemitInventoryService remitInventoryService;
    @RequestMapping(value = "/receivables")
    public String receivables(){
        int method=0;
        switch (method){
            case 1:
                remitInventoryService.activeRemittance();
                break;
            case 2:
                remitInventoryService.transferCheque();
                break;
            case 3:
                remitInventoryService.cashPayment();
                break;
            case 4:
                remitInventoryService.fiscalUnification();
                break;
            case 5:
                remitInventoryService.transferPayment();
                break;
            case 6:
                remitInventoryService.onlinePayment();
                break;
            default:
                remitInventoryService.onsignmentCollection();
                break;
        }
        return null;
    }
}
