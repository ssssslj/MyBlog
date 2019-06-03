package com.myblog.action;


import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myblog.domain.Comment;
import com.myblog.service.CommentService;
@Component
public class CommentAction {
	@Autowired
	private Comment comment;
	@Autowired
	private CommentService commentService;
	private Long aid;
	
	public Long getAid() {
		return aid;
	}

	public void setAid(Long aid) {
		this.aid = aid;
	}

	@Action(value="saveComment",results= {@Result(name="save",location="/index.jsp")})
	public String saveComment() {
		commentService.saveComment(comment);
		return "save";
	}
	
	public List<Comment> showComment(int aid) {
		List<Comment> commentList = commentService.showComment(aid);
		return commentList;
	}
}
