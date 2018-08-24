package com.yc.bean;

import java.sql.Date;

public class Comment {
	private Integer commentid;
	private Integer topicid;
	private String ccontent;
	private Date ctime;
	private Integer uid;
	public Integer getCommentid() {
		return commentid;
	}
	public void setCommentid(Integer commentid) {
		this.commentid = commentid;
	}
	public Integer getTopicid() {
		return topicid;
	}
	public void setTopicid(Integer topicid) {
		this.topicid = topicid;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Comment [commentid=" + commentid + ", topicid=" + topicid + ", ccontent=" + ccontent + ", ctime="
				+ ctime + ", uid=" + uid + "]";
	}
	
	
}
