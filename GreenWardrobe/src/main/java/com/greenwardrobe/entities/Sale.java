package com.greenwardrobe.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "sale")
public class Sale {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sId;
	private String name;
	private String brand;
}