package com.myblog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.myblog.domain.Album;
import com.myblog.domain.Article;

public class AlbumDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveAlbum(Album album) {
		try {
		    this.sessionFactory.getCurrentSession().save(album);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("出错了");
		}
	}
	//分页查找相册列表
	public List<Album> findArticleListForPageBean(int index, int currentCount, int type) {
		// TODO Auto-generated method stub
		Query query = null;
		Session session = this.sessionFactory.getCurrentSession();	
		query =session.createQuery("from Album order by alid desc");
		query.setFirstResult(index);
		query.setMaxResults(currentCount-index);
		List<Album> listarticle =query.list();
		return listarticle;
	}
	
	public int getTotalCount(int type) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		String hqlcount= null;
		hqlcount="select count(*) from Album";
		String sumstring =  (String) session.createQuery(hqlcount).uniqueResult().toString();
		int sum=Integer.parseInt(sumstring);
		return sum;
	}

	public Album getContent(int alid) {
		// TODO Auto-generated method stub
		Album album = this.sessionFactory.getCurrentSession().get(Album.class, new Long(alid));
		return album;
	}

	public Map<Long, String> showIndex() {
		// TODO Auto-generated method stub
		Query query = this.sessionFactory.getCurrentSession().createQuery(" from Album order by alid desc");
		query.setMaxResults(6);
		List<Album> ranklist = query.list();
		Map<Long, String> rankMap = new HashMap<Long, String>();
		for(int i = 0; i < ranklist.size(); i++) {
			rankMap.put(ranklist.get(i).getAlid(), ranklist.get(i).getImg());
		}
		return rankMap;
	
	}
}
