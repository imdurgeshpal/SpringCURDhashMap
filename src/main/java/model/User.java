package model;

import javax.validation.constraints.Size;


public class User {  
	
	
	
private int id;  
	
	
	@Size(min=5,max=20)
private String name; 
	
	private float salary; 
	
	@Size(min=5,max=20)
private String designation;
	
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public float getSalary() {
	return salary;
}
public void setSalary(float salary) {
	this.salary = salary;
}
public String getDesignation() {
	return designation;
}
public void setDesignation(String designation) {
	this.designation = designation;
}  
}