package com.greenwardrobe.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.greenwardrobe.entities.Customer;
import com.greenwardrobe.entities.Garment;
import com.greenwardrobe.repositories.GarmentRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {

	@Autowired
	GarmentRepository garmentRepository;

	@GetMapping("Sell")
	public ModelAndView sell(HttpSession session, HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView();
		if (session.getAttribute("userName") == null) {
			session.setAttribute("loginRequired", true);
			modelAndView.setViewName("redirect:/login");
		} else {
			modelAndView.setViewName("/views/sell.jsp");
		}
		return modelAndView;
	}

	@PostMapping("Sell")
	public ModelAndView sellProcess(@RequestParam("frontImage") MultipartFile frontImageFile,
			@RequestParam("backImage") MultipartFile backImageFile, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws IOException {
		Garment garment = new Garment();

		FileOutputStream fileOutputStream = null;
		try {
			byte[] bytes = frontImageFile.getBytes();

			File folder = new File("C:\\GreenWardrobe\\Images\\" + session.getAttribute("userName"));
			if (!folder.exists()) {
				folder.mkdir();
			}

			File destinationFile = new File("C:\\GreenWardrobe\\Images\\" + session.getAttribute("userName") + "\\"
					+ frontImageFile.getOriginalFilename());

			garment.setFrontImagePath(session.getAttribute("userName") + "/" + frontImageFile.getOriginalFilename());
			garment.setBackImagepath(session.getAttribute("userName") + "/" + backImageFile.getOriginalFilename());

			fileOutputStream = new FileOutputStream(destinationFile);
			fileOutputStream.write(bytes);

			destinationFile = new File("C:\\GreenWardrobe\\Images\\" + session.getAttribute("userName") + "\\"
					+ backImageFile.getOriginalFilename());

			bytes = backImageFile.getBytes();

			fileOutputStream = new FileOutputStream(destinationFile);
			fileOutputStream.write(bytes);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			fileOutputStream.close();
		}

		garment.setName(request.getParameter("name"));
		garment.setBrand(request.getParameter("brand"));
		garment.setCondition(request.getParameter("condition"));
		garment.setCondition(request.getParameter("condition"));
		garment.setStatus("Pending");

		Customer customer = (Customer) session.getAttribute("customer");
		garment.setCustomer(customer);

		garmentRepository.save(garment);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("requestId", garment.getGId());
		modelAndView.addObject("name", request.getParameter("name"));
		modelAndView.addObject("brand", request.getParameter("brand"));
		modelAndView.addObject("condition", request.getParameter("condition"));

		modelAndView.setViewName("/views/sellRequested.jsp");

		return modelAndView;
	}

	@GetMapping("Requests")
	public ModelAndView showRequests(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		Customer customer = (Customer) session.getAttribute("customer");

		List<Garment> garments = garmentRepository.findByCustomer(customer);

		ModelAndView modelAndView = new ModelAndView();
		/*
		 * modelAndView.addObject("requestId", garment.getGId());
		 * modelAndView.addObject("name", request.getParameter("name"));
		 * modelAndView.addObject("brand", request.getParameter("brand"));
		 * modelAndView.addObject("condition", request.getParameter("condition"));
		 */

		// modelAndView.addObject("")
		modelAndView.addObject("garments", garments);
		modelAndView.setViewName("/views/requests.jsp");

		return modelAndView;
	}
}
