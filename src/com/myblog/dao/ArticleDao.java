package com.myblog.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.myblog.action.ArticleAction;
import com.myblog.domain.Article;
import com.myblog.domain.Pager;
import com.opensymphony.xwork2.Result;
import com.yueye.util.SpringSqlUtils;


@Transactional
@Component
public class ArticleDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void saveArticle(Article article) {
		try {
			 this.sessionFactory.getCurrentSession().saveOrUpdate(article);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("出错了");
		}
	}
	

	
	public List<Article> showIndex() {
		try {
			Query query = this.sessionFactory.getCurrentSession().createQuery(" from Article where recommand = 'on' order by aid desc ");
			query.setMaxResults(14);
			List<Article> indexlist = query.list();
			return indexlist;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("出错了");
			return null;
		}
	}
	//分页查找获取文章总数
	public int getTotalCount(int type) {
		
		Session session=this.sessionFactory.getCurrentSession();
		String hqlcount= null;
		if(type == 1) {
			hqlcount="select count(*) from Article where type<="+7;
		}else {
			hqlcount="select count(*) from Article where type="+type;
		}
		
		String sumstring =  (String) session.createQuery(hqlcount).uniqueResult().toString();
		int sum=Integer.parseInt(sumstring);
		return sum;
		
	}


	public List<Article> findArticleListForPageBean(int index, int currentCount,int type) {
		Query query = null;
		Session session = this.sessionFactory.getCurrentSession();
		if(type == 1) {
			System.out.println("??");
			query =session.createQuery("from Article where type<="+7+" order by aid desc");
		}else {
			System.out.println("??>>");
			query =session.createQuery("from Article where type="+type+" order by aid desc");
		}
		query.setFirstResult(index);
		query.setMaxResults(currentCount-index);
		List<Article> listarticle =query.list();
		return listarticle;
	}
	//获取文章内容
	public Article getContent(int aid) {
		// TODO Auto-generated method stub
		Article article = this.sessionFactory.getCurrentSession().get(Article.class, new Long(aid));
		
		int views = article.getViews();
		System.out.println(views);
		views++;
		article.setViews(views);
		System.out.println(views);
		try {
			Query query = this.sessionFactory.getCurrentSession().createQuery("update Article a set a.views=? where a.aid=?");
			query.setParameter(0, views);
			query.setParameter(1, new Long(aid));
			query.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return article;
	}
	
	public List<Article> showIndex2(int type) {
		try {
			Query query = null;
			if(type == 1) {
				query = this.sessionFactory.getCurrentSession().createQuery(" from Article where type<="+7+" order by aid desc ");
			}else {
				query = this.sessionFactory.getCurrentSession().createQuery(" from Article where type="+type+" order by aid desc ");
			}
			
			query.setMaxResults(3);
			List<Article> indexlist = query.list();
			return indexlist;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("出错了");
			return null;
		}
		
	}
	//获取浏览排行文章
	public Map<Long, String> showRank() {
		// TODO Auto-generated method stub
		Query query = this.sessionFactory.getCurrentSession().createQuery(" from Article order by views desc");
		query.setMaxResults(8);
		List<Article> ranklist = query.list();
		Map<Long, String> rankMap = new HashMap<Long, String>();
		for(int i = 0; i < ranklist.size(); i++) {
			rankMap.put(ranklist.get(i).getAid(), ranklist.get(i).getTitle());
		}
		return rankMap;
		
	}
	//获取站长推荐
	public Map<Long, String> showRecommend() {
		// TODO Auto-generated method stub
		Query query = this.sessionFactory.getCurrentSession().createQuery(" from Article where recommand= 'on' order by aid desc");
		query.setMaxResults(8);
		List<Article> recommendlist = query.list();
		Map<Long, String> recommendMap = new HashMap<Long, String>();
		for(int i = 0; i < recommendlist.size(); i++) {
			recommendMap.put(recommendlist.get(i).getAid(), recommendlist.get(i).getTitle());
		}
		return recommendMap;
	}
	
	/*------------------------------------------后台------------------------------------------*/
	
	
	//获取全部文章数量
		public int getTotalCount() {
			
			Session session=this.sessionFactory.getCurrentSession();
			String hqlcount= null;
			hqlcount="select count(*) from Article";
			String sumstring =  (String) session.createQuery(hqlcount).uniqueResult().toString();
			int sum=Integer.parseInt(sumstring);
			return sum;
			
		}

		public void deleteArticle(int aid) {
			// TODO Auto-generated method stub
			try {
				this.sessionFactory.getCurrentSession().createQuery("delete Article where aid = "+aid).executeUpdate();
				System.out.println(aid+"");
				System.out.println("删除成功");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}
	
	
	
}
