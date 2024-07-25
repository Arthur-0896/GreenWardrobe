package com.greenwardrobe.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@Configuration
@ComponentScan(basePackages = "com.greenwardrobe.controllers")
@EntityScan(basePackages = "com.greenwardrobe.entities")
@EnableJpaRepositories("com.greenwardrobe.repositories")
public class GreenWardrobeApplication {

	public static void main(String[] args) {
		SpringApplication.run(GreenWardrobeApplication.class, args);
	}
}