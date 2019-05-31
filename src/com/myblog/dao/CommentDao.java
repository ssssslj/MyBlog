package com.myblog.dao;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.myblog.domain.Comment;

@Transactional
public class CommentDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void saveComment(Comment comment) {
		// TODO Auto-generated method stub
		try {
			this.sessionFactory.getCurrentSession().saveOrUpdate(comment);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
}
