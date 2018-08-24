package com.yc.bean;

import java.sql.Date;

public class Reply {
	private Integer replyid;
	private Integer commentid;
	private String rcontent;
	private Date rtime;
	private Integer uid;
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
	public Date getRtime() {
		return rtime;
	}
	public void setRtime(Date rtime) {
		this.rtime = rtime;
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
				+ ", uid=" + uid + "]";
	}
	
	
}
