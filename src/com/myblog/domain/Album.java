package com.myblog.domain;

import java.util.Date;

public class Album {
	private Long alid;
	private String img;
	private String imgs;
	private String title;
	private String digest;
	private String content;
	private Date date;
	public Long getAlid() {
		return alid;
	}
	public void setAlid(Long alid) {
		this.alid = alid;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getImgs() {
		return imgs;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDigest() {
		return digest;
	}
	public void setDigest(String digest) {
		this.digest = digest;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
