package com.adu;

import com.adu.mgr.PetshopCoreApplication;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;

//引入使用了@Configuration注解的类
@Import(PetshopCoreApplication.class)
//设置为启动类
@SpringBootApplication
//加载指定的属性文件
@PropertySource("classpath:application-mgr.properties")
//扫描Conponent组件
@ComponentScan
public class PetshopMgrsiteApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetshopMgrsiteApplication.class, args);
	}
}
