package com.myblog.action;


import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.myblog.domain.Comment;
import com.myblog.service.CommentService;

public class CommentAction {
	
	private Comment comment;
	private CommentService commentService;
	
	public CommentService getCommentService() {
		return commentService;
	}

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}
	@Action(value="saveComment",results= {@Result(name="save",location="/index.jsp")})
	public String saveComment() {
		commentService.saveComment(comment);
		return "save";
	}
	
}
