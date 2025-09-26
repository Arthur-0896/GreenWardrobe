package com.greenwardrobe.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.greenwardrobe.entities.Customer;
import com.greenwardrobe.repositories.CustomerRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired
	CustomerRepository cusRepository;

	@GetMapping("login")
	public String login() {
		return "/views/login.jsp";
	}

	@PostMapping("loginProcess")
	public String loginProcess(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String userName = request.getParameter("email");
		String passString = request.getParameter("password");

		Customer customer = cusRepository.findByEmail(userName).get(0);
		session.setAttribute("customer", customer);
		
		if (customer != null) {
			if (customer.getPassword().equals(passString)) {
				session.setAttribute("userName", customer.getFName());
				session.setAttribute("role", customer.getRole());
				session.removeAttribute("loginRequired");
				return "/views/loginSuccess.jsp";
			} else {
				return "/views/login.jsp";

			}
		}
		return "/views/login.jsp";
	}

	@GetMapping("signUp")
	public String signUp() {
		return "/views/signUp.jsp";
	}

	@PostMapping("signUpProcess")
	public String signUpProcess(HttpServletRequest request, HttpServletResponse response) {
		Customer customer = new Customer();
		customer.setFName(request.getParameter("fName"));
		customer.setLName(request.getParameter("lName"));
		customer.setAddress(request.getParameter("address"));
		customer.setPhoneNumber(request.getParameter("phone"));
		customer.setEmail(request.getParameter("email"));
		customer.setPassword(request.getParameter("password"));

		cusRepository.save(customer);

		return "views\\signUpConfirm.jsp";
	}

	@PostMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("userName");
		request.getSession().removeAttribute("role");

		return "views\\home.jsp";
	}
}