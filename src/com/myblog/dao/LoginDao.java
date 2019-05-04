package com.myblog.dao;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.myblog.domain.User;

public class LoginDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public String check(User user) {
		// TODO Auto-generated method stub
		try {
			Session session=this.sessionFactory.getCurrentSession();
			Query query = session.createQuery("from User");
			System.out.println(user.getUsername()+"???");

			System.out.println(query.list().size());
			
			User user1 = (User) query.list().get(0);
			String passwd = user1.getPassword();
			return passwd;
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
			// TODO: handle exception
		}
		
	}
}
