package com.greenwardrobe.entities;

import java.io.File;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
	private File frontImage;
	private File backImage;
}