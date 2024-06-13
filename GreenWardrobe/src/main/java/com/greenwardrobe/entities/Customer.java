package com.greenwardrobe.entities;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
public @Data class Customer {
	private int cId;
	private String cName;
	private String address;
	private String phoneNumber;
}