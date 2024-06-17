package com.greenwardrobe.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.greenwardrobe.entities.Garment;

@RepositoryRestResource
public interface GarmentRepository extends JpaRepository<Garment, Integer> {

}
