package com.Practice.Shop;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SignUpRepo extends JpaRepository<adminlogin, String> {


	adminlogin findByUsernameAndPassword(String username, String password);
}
