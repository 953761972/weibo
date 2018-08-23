package com.yc.bean;

import java.sql.Date;

public class Topic {
	private Integer topicid;
	private Integer uid;
	private String content;
	private Date posttime;
	private Integer visible;
	private Integer likecount;
	public Integer getTopicid() {
		return topicid;
	}
	public void setTopicid(Integer topicid) {
		this.topicid = topicid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPosttime() {
		return posttime;
	}
	public void setPosttime(Date posttime) {
		this.posttime = posttime;
	}
	public Integer getVisible() {
		return visible;
	}
	public void setVisible(Integer visible) {
		this.visible = visible;
	}
	public Integer getLikecount() {
		return likecount;
	}
	public void setLikecount(Integer likecount) {
		this.likecount = likecount;
	}
	@Override
	public String toString() {
		return "Topic [topicid=" + topicid + ", uid=" + uid + ", content=" + content + ", posttime=" + posttime
				+ ", visible=" + visible + ", likecount=" + likecount + "]";
	}
	
	
}
