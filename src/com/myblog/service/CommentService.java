package com.myblog.service;

import com.myblog.dao.CommentDao;
import com.myblog.domain.Comment;

public class CommentService {
	private CommentDao commentDao;

	public CommentDao getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	public void saveComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDao.saveComment(comment);
	}
	
}
