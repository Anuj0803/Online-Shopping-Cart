package com.Practice.Shop;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class adminlogin {
	@Id
     String username;
     String password;
     String Phone;

     public adminlogin() {} 
    
     

	public adminlogin(String username, String password, String phone) {
		super();
		this.username = username;
		this.password = password;
		Phone = phone;
	}



	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}



	@Override
	public String toString() {
		return "adminlogin [username=" + username + ", password=" + password + ", Phone=" + Phone + "]";
	}



	
}
