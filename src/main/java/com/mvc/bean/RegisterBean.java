package com.mvc.bean;
 
public class RegisterBean {
 
 private String fullName;
 private String email;
 private String userName;
 private String age;
 private String userType;
 private String password;
 
 //singleton implementation 
 
 public static RegisterBean uniqueinstance;
 
 private RegisterBean() {
	 
 }
 
 public static RegisterBean userLog() {
	 if(uniqueinstance == null) {
		 synchronized(RegisterBean.class) {
			 if(uniqueinstance == null) {
				 uniqueinstance = new RegisterBean();
			 }
		 }
	 }return uniqueinstance;
 }
 
 //singleton implementation end
 
 
 
 

 
public RegisterBean(String fullName, String email, String userName, String age, String userType, String password) {
	super();
	this.fullName = fullName;
	this.email = email;
	this.userName = userName;
	this.age = age;
	this.userType = userType;
	this.password = password;
}


public String getUserName() {
 return userName;
 }
 public void setUserName(String userName) {
 this.userName = userName;
 }
 public String getPassword() {
 return password;
 }
 public void setPassword(String password) {
 this.password = password;
 }
 public void setFullName(String fullName) {
 this.fullName = fullName;
 }
 public String getFullName() {
 return fullName;
 }
 public void setAge(String age) {
 this.age = age;
 }
 public String getAge() {
 return age;
 }
 public void setuserType(String userType) {
 this.userType = userType;
 }
 public String getuserType() {
 return userType;
 }
 public void setEmail(String email) {
 this.email = email;
 }
 public String getEmail() {
 return email;
 }
}