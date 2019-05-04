package com.myblog.action;

import java.util.Map;

import com.myblog.domain.User;
import com.myblog.service.LoginService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction implements Action{
	//提供两个实例变量来封装HTTP请求参数
	private String username;
	private String password;
	private User user;
	private LoginService loginService;
	//user的setter和getter方法
	
	public String getUsername() {
		return username;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	public LoginService getLoginService() {
		return loginService;
	}
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	//Action类默认处理用户请求的方法：execute方法
	public String execute() {
		System.out.println("1"+user.getUsername()+"2"+user.getPassword());
		return loginService.check(user);
		
	}
	
}
