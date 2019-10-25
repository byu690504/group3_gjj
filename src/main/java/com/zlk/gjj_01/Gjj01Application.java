package com.zlk.gjj_01;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.zlk.gjj_01.register.*.mapper")
public class Gjj01Application {

	public static void main(String[] args) {
		SpringApplication.run(Gjj01Application.class, args);
	}

}
