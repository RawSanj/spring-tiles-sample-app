package com.sanjay.springtiles.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sanjay.springtiles.entity.Role;
import com.sanjay.springtiles.entity.User;
import com.sanjay.springtiles.repository.RoleRepository;
import com.sanjay.springtiles.repository.UserRepository;


@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	public void save(User user) {
		user.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));

		List<Role> roles = new ArrayList<Role>();
		roles.add(roleRepository.findByName("ROLE_USER"));
		user.setRoles(roles);

		userRepository.save(user);
	}

	public User findLoggedInUser(String name) {
		// TODO Auto-generated method stub
		return userRepository.findByName(name);
	}

	public void update(User user) {
		userRepository.saveAndFlush(user);
		
	}

}
