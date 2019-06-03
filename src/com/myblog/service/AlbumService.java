package com.myblog.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.dao.AlbumDao;
import com.myblog.domain.Album;
import com.myblog.domain.Article;
import com.myblog.domain.PageBean;

@Component
public class AlbumService {
	@Autowired
	private AlbumDao albumDao;
	@Autowired
	private PageBean pageBean;
	
	public void saveAlbum(Album album) {
		// TODO Auto-generated method stub
		albumDao.saveAlbum(album);
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
