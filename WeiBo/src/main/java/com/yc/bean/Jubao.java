package com.yc.bean;

public class Jubao {
	private int jid;
    private int uid;
    private int topicid;
    private int number;
    
	public int getJid() {
		return jid;
	}
	public void setJid(int jid) {
		this.jid = jid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getTopicid() {
		return topicid;
	}
	public void setTopicid(int topicid) {
		this.topicid = topicid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	
	@Override
	public String toString() {
		return "Jubao [jid=" + jid + ", uid=" + uid + ", topicid=" + topicid + ", number=" + number + "]";
	}
    
	
}
