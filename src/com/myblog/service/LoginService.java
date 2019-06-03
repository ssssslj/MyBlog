package com.myblog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.dao.LoginDao;
import com.myblog.domain.User;

@Component
public class LoginService {
	@Autowired
	private LoginDao loginDao;

	public String check(User user) {
		// TODO Auto-generated method stub
		String passwd = loginDao.check(user);
		System.out.println(passwd+"???");
		if(user.getPassword()!=null && user.getPassword().equals(passwd)) {
			return "login";
		}
		return "error";
	}
	
}
