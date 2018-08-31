package com.yc.bean;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Comment {
	private Integer commentid;
	private Integer topicid;
	private String ccontent;
	private Timestamp ctime;
	private Integer uid;
	private User user;
	private List<Reply> replys;
	private String image;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Reply> getReplys() {
		return replys;
	}
	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}
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
	public Timestamp getCtime() {
		return ctime;
	}
	public void setCtime(Timestamp now) {
		this.ctime = now;
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
				+ ctime + ", uid=" + uid + ", user=" + user + ", replys=" + replys + "]";
	}
	
	
}
