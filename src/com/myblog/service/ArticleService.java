package com.myblog.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.dao.ArticleDao;
import com.myblog.domain.Article;
import com.myblog.domain.PageBean;
import com.myblog.domain.Pager;
import com.yueye.util.SpringBeanUtil;

@Component
public class ArticleService {
	@Autowired
	private ArticleDao articleDao;
	@Autowired
	private PageBean pageBean;

	public void saveArticle(Article article) {
		
		articleDao.saveArticle(article);
	}
	public List<Article> showIndex() {
		return articleDao.showIndex();
	}

	//分页操作
	public PageBean findPageBean(int currentPage,int currentCount,int type) {
		
		pageBean.setCurrentPage(currentPage);
		pageBean.setCurrentCount(currentCount);
		
		int totalCount = articleDao.getTotalCount(type);
		pageBean.setTotalCount(totalCount);
		
		int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount);
		pageBean.setTotalPage(totalPage);
		int index = (currentPage - 1) * currentCount;
		List<Article> articleList = articleDao.findArticleListForPageBean(index,currentCount,type);
		pageBean.setArticleList(articleList);
		
		return pageBean;
	}

	public Article getContent(int aid) {
		// TODO Auto-generated method stub
		
		return articleDao.getContent(aid);
	}

	public List<Article> showIndex2(int label) {
		// TODO Auto-generated method stub
		return articleDao.showIndex2(label);
	}

	
	
	public Map<Long, String> showRank() {
		// TODO Auto-generated method stub
		return articleDao.showRank();
	}

	public Map<Long, String> showRecommend() {
		// TODO Auto-generated method stub
		return articleDao.showRecommend();
	}

	/*--------------------------------------后台------------------------------------------*/
	public int showTotalCount() {
		return articleDao.getTotalCount();
	}

	public void deleteArticle(int aid) {
		// TODO Auto-generated method stub
		articleDao.deleteArticle(aid);
	}
	
	
}
