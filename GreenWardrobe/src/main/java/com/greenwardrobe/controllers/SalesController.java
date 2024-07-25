package com.greenwardrobe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.greenwardrobe.entities.Garment;
import com.greenwardrobe.entities.Sale;
import com.greenwardrobe.repositories.GarmentRepository;
import com.greenwardrobe.repositories.SaleRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class SalesController {

	@Autowired
	SaleRepository repository;

	@PostMapping("saleProcess")
	public ModelAndView sellProcess(HttpServletRequest request, HttpServletResponse response) {
		Sale sale = new Sale();

		sale.setName("Loose Fitted T-Shirt");
		sale.setBrand("Nirvana");

		repository.save(sale);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("requestId", sale.getSId());
		modelAndView.addObject("name", sale.getName());
		modelAndView.addObject("brand", sale.getBrand());

		modelAndView.setViewName("/views/saleSuccess.jsp");

		return modelAndView;
	}
}