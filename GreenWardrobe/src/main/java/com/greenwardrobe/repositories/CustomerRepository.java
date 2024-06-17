package com.greenwardrobe.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.greenwardrobe.entities.Customer;
import java.util.List;


@RepositoryRestResource
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	List<Customer> findByEmail(String email);
}
