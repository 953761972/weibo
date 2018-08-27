package com.yc.bean;

import org.springframework.stereotype.Component;

@Component
public class Datas {
	private int followers;
	private int fans;
	private int topicCounts;
	private int likes;
	private Page<?> page;
	
	@Override
	public String toString() {
		return "Datas [followers=" + followers + ", fans=" + fans + ", topicCounts=" + topicCounts + ", likes=" + likes
				+ ", page=" + page + "]";
	}
	
	
	public int getLikes() {
		return likes;
	}


	public void setLikes(int likes) {
		this.likes = likes;
	}


	public Page<?> getPage() {
		return page;
	}


	public void setPage(Page<?> page) {
		this.page = page;
	}


	public int getFollowers() {
		return followers;
	}
	public void setFollowers(int followers) {
		this.followers = followers;
	}
	public int getFans() {
		return fans;
	}
	public void setFans(int fans) {
		this.fans = fans;
	}
	public int getTopicCounts() {
		return topicCounts;
	}
	public void setTopicCounts(int topicCounts) {
		this.topicCounts = topicCounts;
	}
	
	
}
