package com.sanjay.springtiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/")
	public String home(){
		return "home";
	}

	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/error404")
	public String show404(){
		return "error404";
	}
	
	@RequestMapping("/error500")
	public String show500(){
		return "error500";
	}
}
