package com.Practice.Shop;

import java.io.File;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan
public class ShopApplication {

	public static void main(String[] args) {
		
		new File(ShopController.uploadDirectory).mkdir();
		SpringApplication.run(ShopApplication.class, args);
	}

}
