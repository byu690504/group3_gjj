package com.zlk.gjj_01.register.zj.controller;
/**
 * 缴费方式控制类
 */

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/remitInventory")
public class RemitInventoryController {
    @RequestMapping(value = "/receivables")
    public String receivables(){
        int method=0;
        switch (method){
            case 1:
                System.out.println();
                break;
            case 2:
                System.out.println();
                break;
            case 3:
                System.out.println();
                break;
            case 4:
                System.out.println();
                break;
            case 5:
                System.out.println();
                break;
            case 6:
                System.out.println();
                break;
            default:
                System.out.println();
                break;
        }
        return null;
    }
}
