package com.greenwardrobe.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.greenwardrobe.entities.Customer;
import com.greenwardrobe.entities.Garment;

@RepositoryRestResource
public interface GarmentRepository extends JpaRepository<Garment, Integer> {
	List<Garment> findByStatus(String status);
	
	List<Garment> findByCustomer(Customer customer);

}
