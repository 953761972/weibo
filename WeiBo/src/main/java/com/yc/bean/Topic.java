package com.yc.bean;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Topic {
	private Integer topicid;
	private Integer uid;
	private String content;
	private Timestamp posttime;
	//private String posttime;
	private Integer visible;
	private Integer likecount;
	private List<Comment> comments;
	private User user;
	private String image;
	private List<String> images;
	private Integer transpondfrom;
	private Integer transfromuid;
	private String transfromuname;
	private Integer commentcount;
	
	@Override
	public String toString() {
		return "Topic [topicid=" + topicid + ", uid=" + uid + ", content=" + content + ", posttime=" + posttime
				+ ", visible=" + visible + ", likecount=" + likecount + ", comments=" + comments + ", user=" + user
				+ ", image=" + image + ", images=" + images + ", transpondfrom=" + transpondfrom + ", transfromuid="
				+ transfromuid + ", transfromuname=" + transfromuname + ", commentcount=" + commentcount + "]";
	}
	
	public Integer getCommentcount() {
		return commentcount;
	}

	public void setCommentcount(Integer commentcount) {
		this.commentcount = commentcount;
	}

	public String getTransfromuname() {
		return transfromuname;
	}
	public void setTransfromuname(String transfromuname) {
		this.transfromuname = transfromuname;
	}
	public Integer getTransfromuid() {
		return transfromuid;
	}
	public void setTransfromuid(Integer transfromuid) {
		this.transfromuid = transfromuid;
	}

	public Integer getTranspondfrom() {
		return transpondfrom;
	}
	public void setTranspondfrom(Integer transpondfrom) {
		this.transpondfrom = transpondfrom;
	}
	public List<String> getImages() {
		return images;
	}
	public void setImages(List<String> images) {	
		this.images = images;
		this.images.add(image);
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Comment> getComment() {
		return comments;
	}
	public void setComment(List<Comment> comment) {
		this.comments = comment;
	}
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
	public Timestamp getPosttime() {
		return posttime;
	}
	public void setPosttime(Timestamp now) {
		this.posttime = now;
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

	
	
}
