package com.Practice.Shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class Login {
	@Autowired
	private SignUpRepo repo2;
	  
	  public adminlogin login(String username, String password) {
	  adminlogin user = repo2.findByUsernameAndPassword(username, password);
	   return user;
	  }
}
