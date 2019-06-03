package com.myblog.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.domain.User;
import com.myblog.service.LoginService;

import com.opensymphony.xwork2.ActionSupport;

@Component
public class LoginAction extends ActionSupport{
	//提供两个实例变量来封装HTTP请求参数
	private String username;
	private String password;
	@Autowired
	private User user;
	@Autowired
	private LoginService loginService;
	//user的setter和getter方法
	
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

	//Action类默认处理用户请求的方法：execute方法
	@Action(value="login",results= {@Result(name="login",type="redirectAction",location="article_showDarkIndex")})
	public String execute() {
		System.out.println("1"+user.getUsername()+"2"+user.getPassword());
		return loginService.check(user);
		
	}
	
}
