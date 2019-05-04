package com.myblog.domain;

public class Article {
	
	private Long aid;
	private String imgUrl;
	private String title;
	private String label;
	private String author;
	private String date;
	private String digest;
	private String content;
	private int type;
	private String recommand;
    private int views;
	
	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getRecommand() {
		return recommand;
	}

	public void setRecommand(String recommand) {
		this.recommand = recommand;
	}

	public String getDate() {
		return date;
	}

	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
	
	

	public void setDate(String date) {
		this.date = date;
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
	
	
	
	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

 
}
