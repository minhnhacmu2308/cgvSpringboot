package com.cgv.dao.User;

import org.springframework.stereotype.Repository;

import com.cgv.models.User;

@Repository
public interface UserDao {
	
	public boolean login(User user);
	
	public boolean register(User user);
	
	 public  String md5(String password);

	 public boolean checkAccountExit(String email);
	 
	 public User getInformation(String email);
	 
	 public void logout();

}
