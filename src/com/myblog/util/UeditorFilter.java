package com.myblog.util;

import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

import com.myblog.domain.User;

public class UeditorFilter extends StrutsPrepareAndExecuteFilter {
	
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		//req.setCharacterEncoding("UTF-8");
		//res.setContentType("text/html;charset=utf-8");
		HttpServletRequest request = (HttpServletRequest)req;

		String requestPath = request.getServletPath();
		String url = request.getRequestURI();
		System.out.println(url);

			if(url.contains("jsp/controller.jsp") || url.endsWith("login.jsp")) {
				System.out.println("访问登陆界面，放行");
				chain.doFilter(req, res);
			
			}else if(url.contains("dark")){
				super.doFilter(req, res, chain);
			}else if(url.endsWith(".jsp")  ){
				request.getRequestDispatcher("/404.jsp").forward(req, res);
				//chain.doFilter(req, res);
				//System.out.println("访问后台主界面，过滤");
				//request.getRequestDispatcher("/dark/admin/login.jsp").forward(req, res);
				
			}else {
				super.doFilter(req, res, chain);
			}
		
		
		
	}
}