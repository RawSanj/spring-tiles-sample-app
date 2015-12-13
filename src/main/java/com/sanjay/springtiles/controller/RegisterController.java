package com.sanjay.springtiles.controller;


import java.util.List;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sanjay.springtiles.entity.User;
import com.sanjay.springtiles.service.UserService;

@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	
	@ModelAttribute("user")
	public User createUser(){
		return new User();
	}
		
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String doRegister(@Valid @ModelAttribute("user") User user, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "register";
		}
		userService.save(user);
		List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList("ROLE_USER");
		UserDetails userDetails = new org.springframework.security.core.userdetails
				.User(user.getName(), user.getPassword(), authorities);
		
		Authentication auth = 
				new UsernamePasswordAuthenticationToken(userDetails, user.getPassword(), authorities);
		
		SecurityContextHolder.getContext().setAuthentication(auth);
		redirectAttributes.addFlashAttribute("registerMessage", "You have been signed up Successfully...!");
		//return "redirect:/login.html?success=true";
		return "redirect:/account";
	}

}
