package com.greenwardrobe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.greenwardrobe.entities.Garment;
import com.greenwardrobe.repositories.GarmentRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class CustomerController {

	@Autowired
	GarmentRepository repository;

	
	@GetMapping("sell")
	public String sell() {
		return "views\\sell.jsp";
	}
	
	@PostMapping("sellProcess")
	public ModelAndView sellProcess(HttpServletRequest request, HttpServletResponse response) {
		Garment garment= new Garment();
		
		garment.setName(request.getParameter("name"));
		garment.setBrand(request.getParameter("brand"));
		garment.setCondition(request.getParameter("condition"));
		
		repository.save(garment);
				
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("requestId", garment.getGId());
		modelAndView.addObject("name", request.getParameter("name"));
		modelAndView.addObject("brand", request.getParameter("brand"));
		modelAndView.addObject("condition", request.getParameter("condition"));

		modelAndView.setViewName("views\\\\sellRequested.jsp");
		
		return modelAndView;
	}
}
