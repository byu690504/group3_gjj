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
}
