package com.sanjay.springtiles.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sanjay.springtiles.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	User findByName(String name);
}
