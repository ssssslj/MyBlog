package com.myblog.domain;

import java.io.Serializable;
import java.util.List;

public class Pager<ShowArticle> implements Serializable {
	private static final long serialVersionUID = -8741766802354222579L;
	
	private int pageSize;
	private int currentPage;
	private int totalRecord;
	private int totalPage;
	private List<ShowArticle> dateList;
	
	public Pager(int pageNum, int pageSize, List<ShowArticle> sourceList) {
		if(sourceList == null || sourceList.isEmpty()){
            return;
        }
	}
	
	public Pager() {
		
	}
	public Pager(int pageSize, int currentPage, int totalRecord, int totalPage, List<ShowArticle> dateList) {
		super();
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.totalRecord = totalRecord;
		this.totalPage = totalPage;
		this.dateList = dateList;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<ShowArticle> getDateList() {
		return dateList;
	}
	public void setDateList(List<ShowArticle> dateList) {
		this.dateList = dateList;
	}
	
	
}
