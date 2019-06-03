package com.myblog.dao;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.domain.User;
@Component
public class LoginDao {
	@Autowired
	private SessionFactory sessionFactory;

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
