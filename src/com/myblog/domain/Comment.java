package com.myblog.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="comment")
@Component
public class Comment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long acid;
	
	private Long aid;
	
	private String date;
	
	private String name;
	
	private String content;
	
	public Long getAcid() {
		return acid;
	}
	
	public void setAcid(Long acid) {
		this.acid = acid;
	}
	
	public Long getAid() {
		return aid;
	}
	
	public void setAid(Long aid) {
		this.aid = aid;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
