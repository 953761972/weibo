package com.yc.bean;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Group {
	private Integer groupid;
	private Integer uid;
	private String groupname;
	private List<User> user;
	private int friendscount;
	private char isdefault;
	
	public int getFriendscount() {
		return friendscount;
	}
	public void setFriendscount(int friendscount) {
		this.friendscount = friendscount;
	}
	public char getIsdefault() {
		return isdefault;
	}
	public void setIsdefault(char isdefault) {
		this.isdefault = isdefault;
	}
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
		return "Group [groupid=" + groupid + ", uid=" + uid + ", groupname=" + groupname + ", user=" + user
				+ ", friendscount=" + friendscount + ", isdefault=" + isdefault + "]";
	}
	
	
}
