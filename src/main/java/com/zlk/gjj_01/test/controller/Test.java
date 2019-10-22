package com.zlk.gjj_01.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping(value = "/test")
public class Test {

    @RequestMapping("/hello")
    public String helloHtml(Map<String, Object> map) {
        map.put("hello", "从 Controller 到 html");
        return "test";
    }
}
