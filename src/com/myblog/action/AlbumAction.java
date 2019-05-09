package com.myblog.action;

import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.myblog.domain.Album;
import com.myblog.domain.PageBean;
import com.myblog.service.AlbumService;
import com.opensymphony.xwork2.ActionSupport;

public class AlbumAction extends ActionSupport{
	private Album album;
	private AlbumService albumService;
	private PageBean<Album> pageBean = null;
	private Map<Long, String> albumMap = null;
	private int alid;
	int currentPage = 1;
	int currentCount = 12;
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}
	public AlbumService getAlbumService() {
		return albumService;
	}
	public void setAlbumService(AlbumService albumService) {
		this.albumService = albumService;
	}
	public PageBean<Album> getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean<Album> pageBean) {
		this.pageBean = pageBean;
	}
	public Map<Long, String> getAlbumMap() {
		return albumMap;
	}
	public void setAlbumMap(Map<Long, String> albumMap) {
		this.albumMap = albumMap;
	}
	public int getAlid() {
		return alid;
	}
	public void setAlid(int alid) {
		this.alid = alid;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(int currentCount) {
		this.currentCount = currentCount;
	}
	
	@Action(value="album_showAlbumList",results= {@Result(name="album",location="/share.jsp")})
	public String showAlbumList() {
	
		pageBean = albumService.findPageBean(currentPage, currentCount, 1);
		return "album";
	}
	
	@Action(value="album_saveAlbum",results= {@Result(name="save",location="/dark/admin/form2.jsp")})
	public String saveAlbum() {
		System.out.println("AlbumAction:saveablum");
		albumService.saveAlbum(album);
		return "save";
	}
	
	@Action(value="album_showContent",results= {@Result(name="content",location="/infopic.jsp")})
	public String showContent() {
		album = albumService.getContent(alid);
		this.albumMap = albumService.showIndex();
		return "content";
	}
	//articleAction调用
	public Map<Long, String> showIndex() {
		// TODO Auto-generated method stub
		return albumService.showIndex();
	}
	
}
