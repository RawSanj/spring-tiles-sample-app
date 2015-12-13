package com.sanjay.springtiles.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sanjay.springtiles.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{

	Role findByName(String name);

}
