package com.zlk.gjj_01;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

    public ServletInitializer(){
        System.out.println("初始化程序ServletInitializer");
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
        return application.sources(Gjj01Application.class);
    }
}
