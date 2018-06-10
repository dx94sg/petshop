package com.adu.mgr;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;
//配置类
@Configuration
//扫描Conponent组件
@ComponentScan
//开启自动加载(如连接池)
@EnableAutoConfiguration
//扫描Mapper所在的包
@MapperScan(basePackages = "com.adu.*.mapper")
//启用事务的注解
@EnableTransactionManagement
public class PetshopCoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetshopCoreApplication.class, args);
	}
}
