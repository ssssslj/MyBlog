package com.myblog.dao;

import java.util.List;

import org.hibernate.Query;
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

	public List<Comment> showComment(int aid) {
		// TODO Auto-generated method stub
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Comment where aid = ? order by acid desc");
		query.setParameter(0, new Long(aid));
		List<Comment> commentList = query.list();
		return commentList;
		
	}
	
}
