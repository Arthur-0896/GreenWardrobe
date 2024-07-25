package com.greenwardrobe.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping({ "home", "/" })
	public String home() {
		return "/views/home.jsp";
	}

	
	
	@GetMapping("buy")
	public String buy() {
		return "/views/buy.jsp";
	}
}
