package com.myblog.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyDefault extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		String user = (String)session.get("username");
		String path = request.getRequestURI();//url
		System.out.println(path+"123");
		System.out.println(user+"123");
		if(user != null || path.endsWith("show_showIndex")) {
			System.out.println(user);
			return invocation.invoke();
		}
		System.out.println("你还没有登陆");
		return "login";
	}
	
}
