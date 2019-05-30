package com.myblog.service;

import com.myblog.dao.CommentDao;

public class CommentService {
	private CommentDao commentDao;

	public CommentDao getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	
}
