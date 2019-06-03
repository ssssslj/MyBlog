package com.myblog.dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Component
public class GoodDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public int showGoods(int aid) {
		int goods = 0;
		try {
			Query query = this.sessionFactory.getCurrentSession().createQuery("select goods from Goods where aid =? order by gid desc");
			query.setParameter(0, new Long(aid));
			goods = (int)query.uniqueResult();
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		
		return goods;
	}
}
