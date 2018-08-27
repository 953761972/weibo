package com.yc.bean;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.stereotype.Component;
@Component
public class Reply {
	private Integer replyid;
	private Integer commentid;
	private String rcontent;
	private Timestamp rtime;
	private Integer uid;
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getReplyid() {
		return replyid;
	}
	public void setReplyid(Integer replyid) {
		this.replyid = replyid;
	}
	public Integer getCommentid() {
		return commentid;
	}
	public void setCommentid(Integer commentid) {
		this.commentid = commentid;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public Timestamp getRtime() {
		return rtime;
	}
	public void setRtime(Timestamp now) {
		this.rtime = now;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Reply [replyid=" + replyid + ", commentid=" + commentid + ", rcontent=" + rcontent + ", rtime=" + rtime
				+ ", uid=" + uid + ", user=" + user + "]";
	}
	
	
}
