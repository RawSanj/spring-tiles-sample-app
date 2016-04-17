package com.sanjay.springtiles.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.Principal;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sanjay.springtiles.entity.StudentDTO;
import com.sanjay.springtiles.entity.User;
import com.sanjay.springtiles.service.UserService;


@Controller
@RequestMapping("account")
public class UserController {
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("")
	public String test(Model model, Principal principal){
		model.addAttribute("user", userService.findLoggedInUser(principal.getName()));
		//System.out.println("users profile Pic is stored at "+userService.findLoggedInUser(principal.getName()).getProfileImage());
		return "account";
	}
	
	@RequestMapping("/upload")
	public String register(Model model, Principal principal){
		model.addAttribute("user", userService.findLoggedInUser(principal.getName()));
		return "upload";
	}
	
	@Transactional
	@RequestMapping(value="/upload", method = RequestMethod.POST)
	public String handleFormUpload(@RequestParam("imageFile") MultipartFile file, Principal principal) {
		
		System.out.println("Uploading FIle....!");
		
	    String webappRoot = servletContext.getRealPath("/");
	    String LoggedInUser = principal.getName();
	    User user = userService.findLoggedInUser(LoggedInUser);
	    //System.out.println(user.toString());
		try {
			if (!file.isEmpty()) {
				 BufferedImage src = ImageIO.read(new ByteArrayInputStream(file.getBytes()));
				 File destination = new File(webappRoot + "/resources/profile-pictures/ProfileImage"+user.getName()+".jpg"); // something like C:/Users/tom/Documents/nameBasedOnSomeId.png
				 ImageIO.write(src, "png", destination);
				 System.out.println("users profile Pic is stored at "+user.getProfileImage() + "UserPassword :" +user.getPassword());
				 user.setProfileImage("ProfileImage"+user.getName()+".jpg");
				 userService.update(user);
				 System.out.println("Image is stored at "+ user.getProfileImage());
			} 
		} catch (Exception e) {
			System.out.println("Exception occured" + e.getMessage());
			return "redirect:/account/upload?success=false";
		}
		return "redirect:/account/upload?success=true";
	}
	
	@RequestMapping(value="/ajaxreturn", method = RequestMethod.POST)
	@ResponseBody
	public StudentDTO getStudentJson() {
		
		System.out.println("Returning Student");
		StudentDTO student = new StudentDTO(1, "Sanjay", "Rawat", "Engineering");
		
		return student;
	}
	
}
