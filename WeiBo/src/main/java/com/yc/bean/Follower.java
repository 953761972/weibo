package com.yc.bean;

import org.springframework.stereotype.Component;

@Component
public class Follower {
	private Integer followerid;
	private Integer uid;
	private String groupid;
	@Override
	public String toString() {
		return "Follower [followerid=" + followerid + ", uid=" + uid + ", groupid=" + groupid + "]";
	}
	public Integer getFollowerid() {
		return followerid;
	}
	public void setFollowerid(Integer followerid) {
		this.followerid = followerid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getGroupid() {
		return groupid;
	}
	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}	
}
