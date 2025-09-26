package com.greenwardrobe.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "garment")
public class Garment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int gId;
	private String name;
	private String brand;
	private String condition;
	private String status;
	private String frontImagePath;
	private String backImagepath;
	
	@ManyToOne
	private Customer customer;
}