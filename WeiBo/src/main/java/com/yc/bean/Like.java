package com.yc.bean;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;

@Component
public class Like {
	private char zan;
	private Timestamp liketime;
	private Integer uid;
	private Integer topicid;
	public char getZan() {
		return zan;
	}
	public void setZan(char zan) {
		this.zan = zan;
	}
	public Timestamp getLiketime() {
		return liketime;
	}
	public void setLiketime(Timestamp liketime) {
		this.liketime = liketime;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getTopicid() {
		return topicid;
	}
	public void setTopicid(Integer topicid) {
		this.topicid = topicid;
	}
	@Override
	public String toString() {
		return "Like [zan=" + zan + ", liketime=" + liketime + ", uid=" + uid + ", topicid=" + topicid + "]";
	}
	
	
}
