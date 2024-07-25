package com.greenwardrobe.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.greenwardrobe.entities.Garment;
import com.greenwardrobe.repositories.GarmentRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class AdminController {

	@Autowired
	GarmentRepository garmentRepository;

	@PostMapping("Approve")
	public ModelAndView approve(HttpServletRequest request, HttpServletResponse response) {
		List<Garment> garments = garmentRepository.findByStatus("Pending");

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("garments", garments);
		modelAndView.setViewName("/views/approve.jsp");

		return modelAndView;
	}

	@PostMapping("ApproveProcess/{garmentId}")
	public ModelAndView approveProcess(@PathVariable int garmentId, HttpServletRequest request,
			HttpServletResponse response) {
		// Retrieve the garment with the above id from the database. 
		Garment garment = garmentRepository.findById(garmentId).get();

		// Update the garment status to approved
		garment.setStatus("Approved");
		garmentRepository.save(garment);

		// Retrieve the new list of pending status garments
		List<Garment> garments = garmentRepository.findByStatus("Pending");

		// Set the Update list of garment in the model and redirect to the approve page again.
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("garments", garments);
		modelAndView.setViewName("/views/approve.jsp");

		return modelAndView;
	}

	@PostMapping("RejectProcess/{garmentId}")
	public ModelAndView rejectProcess(@PathVariable int garmentId, HttpServletRequest request,
			HttpServletResponse response) {
		Garment garment = garmentRepository.findById(garmentId).get();

		garment.setStatus("Rejected");

		garmentRepository.save(garment);

		List<Garment> garments = garmentRepository.findByStatus("Pending");

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("garments", garments);
		modelAndView.setViewName("/views/approve.jsp");

		return modelAndView;
	}
}