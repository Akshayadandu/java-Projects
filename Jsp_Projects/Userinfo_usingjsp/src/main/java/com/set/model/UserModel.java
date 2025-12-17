package com.set.model;

public class UserModel {
 int id;
 String firstName;
 String lastName;
 String phoneno;
 String email;
 public UserModel(int id, String firstName, String lastName, String phoneno, String email ) {
	 super();
	 this.id=id;
	 this.firstName=firstName;
	 this.lastName=lastName;
	 this.phoneno=phoneno;
	 this.email=email; 
 }
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstName() {
	return firstName;
}
public void setFirstname(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getPhoneno() {
	return phoneno;
}
public void setPhoneno(String phoneno) {
	this.phoneno = phoneno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
 
}
