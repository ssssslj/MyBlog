package com.myblog.service;

import com.myblog.dao.LoginDao;
import com.myblog.domain.User;

public class LoginService {
	private LoginDao loginDao;

	public LoginDao getLoginDao() {
		return loginDao;
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

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
