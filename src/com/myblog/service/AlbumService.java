package com.myblog.service;

import java.util.List;
import java.util.Map;

import com.myblog.dao.AlbumDao;
import com.myblog.domain.Album;
import com.myblog.domain.Article;
import com.myblog.domain.PageBean;

public class AlbumService {
	private AlbumDao albumDao;

	private PageBean pageBean;
	public AlbumDao getAlbumDao() {
		return albumDao;
	}

	public void setAlbumDao(AlbumDao albumDao) {
		this.albumDao = albumDao;
	}

	public void saveAlbum(Album album) {
		// TODO Auto-generated method stub
		albumDao.saveAlbum(album);
	}
	
	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public PageBean findPageBean(int currentPage,int currentCount,int type) {
		
		pageBean.setCurrentPage(currentPage);
		pageBean.setCurrentCount(currentCount);
		
		int totalCount = albumDao.getTotalCount(type);
		pageBean.setTotalCount(totalCount);
		
		int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount);
		pageBean.setTotalPage(totalPage);
		int index = (currentPage - 1) * currentCount;
		List<Album> albumList = albumDao.findArticleListForPageBean(index,currentCount,type);
		pageBean.setArticleList(albumList);
		
		return pageBean;
	}

	public Album getContent(int alid) {
		// TODO Auto-generated method stub
		return albumDao.getContent(alid);
	}

	public Map<Long, String> showIndex() {
		// TODO Auto-generated method stub
		return albumDao.showIndex();
	}
	
}
