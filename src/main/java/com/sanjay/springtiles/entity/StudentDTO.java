package com.sanjay.springtiles.entity;

public class StudentDTO {
	private Integer id;

	private String firstName;
	
	private String lastName;
	
	private String course;
	
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public StudentDTO() {
	}
	
	public StudentDTO(Integer id, String fName, String lName, String course) {
		this.id = id;
		this.firstName = fName;
		this.lastName = lName;
		this.course = course;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}

