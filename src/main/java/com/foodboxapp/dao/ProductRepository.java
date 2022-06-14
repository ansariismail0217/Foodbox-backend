package com.foodboxapp.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

import com.foodboxapp.entity.Product;

// Entity= Product, Primary Key= Long
@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long>{
	
	List<Product> findByCategoryId(@RequestParam("id") Long id);
	
	List<Product> findByNameContaining(@RequestParam("name") String name);

}
