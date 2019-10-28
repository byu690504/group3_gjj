package com.zlk.gjj_01.register;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class PageTest {

    @RequestMapping("/page0")
    public String test0(){
        return "index";
    }

    @RequestMapping("/page1")
    public String test1(){
        return "index";
    }

    @RequestMapping("/page2")
    public String test2(){
        return "login";
    }

    @RequestMapping("/page3")
    public String test3(){
        return "register";
    }

    @RequestMapping("/page4")
    public String test4(){
        return "centre";
    }

    @RequestMapping("/page5")
    public String test5(){
        return "registerRequest";
    }

    @RequestMapping("/page6")
    public String test6(){
        return "agentPower";
    }

    @RequestMapping("/page7")
    public String test7(){
        return "unitOpenAccount";
    }

    @RequestMapping("/page8")
    public String test8(){
        return "registerByUnitName";
    }

    @RequestMapping("/page9")
    public String test9(){
        return "unitBusinessPower";
    }

    @RequestMapping("/page10")
    public String test10(){
        return "secondaryManage";
    }

    @RequestMapping("/page11")
    public String test11(){
        return "remitInventory";
    }

    @RequestMapping("/page12")
    public String test12(){
        return "registerChange";
    }
}
