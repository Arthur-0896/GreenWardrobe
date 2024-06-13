package com.greenwardrobe.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.greenwardrobe.entities.Customer;

@SpringBootApplication
@Configuration
@ComponentScan(basePackages = "com.greenwardrobe.entities")
@ComponentScan(basePackages = "com.greenwardrobe.controllers")
public class GreenWardrobeApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(GreenWardrobeApplication.class, args);

		Customer customer = context.getBean(Customer.class);
		
		System.out.println(customer.toString());
	}
}
