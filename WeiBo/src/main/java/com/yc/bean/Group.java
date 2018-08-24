package com.yc.bean;

public class Group {
	private Integer groupid;
	private Integer uid;
	private String groupname;
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
		return "Group [groupid=" + groupid + ", uid=" + uid + ", groupname=" + groupname + "]";
	}
	
	
}
