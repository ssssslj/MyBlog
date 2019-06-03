package com.myblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.dao.CommentDao;
import com.myblog.domain.Comment;

@Component
public class CommentService {
	@Autowired
	private CommentDao commentDao;

	public void saveComment(Comment comment) {
		// TODO Auto-generated method stub
		commentDao.saveComment(comment);
	}

	public List<Comment> showComment(int aid) {
		// TODO Auto-generated method stub
		return commentDao.showComment(aid);
	}
	
}
