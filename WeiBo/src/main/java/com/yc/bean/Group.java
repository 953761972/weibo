package com.yc.bean;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Group {
	private Integer groupid;
	private Integer uid;
	private String groupname;
	private List<User> user;
	
	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> user) {
		this.user = user;
	}
	public Integer getGroupid() {
		return groupid;
	}
	public void setGroupid(Integer groupid) {
		this.groupid = groupid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	@Override
	public String toString() {
		return "Group [groupid=" + groupid + ", uid=" + uid + ", groupname=" + groupname + ", user=" + user + "]";
	}
	
	
}
