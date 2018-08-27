package com.yc.bean;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Album {
	private Integer albumid;
	private Integer uid;
	private String albumname;
	private List<Photo> photo;
	@Override
	public String toString() {
		return "Album [albumid=" + albumid + ", uid=" + uid + ", albumname=" + albumname + ", photo=" + photo + "]";
	}
	public Integer getAlbumid() {
		return albumid;
	}
	public void setAlbumid(Integer albumid) {
		this.albumid = albumid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getAlbumname() {
		return albumname;
	}
	public void setAlbumname(String albumname) {
		this.albumname = albumname;
	}
	public List<Photo> getPhoto() {
		return photo;
	}
	public void setPhoto(List<Photo> photo) {
		this.photo = photo;
	}
	
	
}
