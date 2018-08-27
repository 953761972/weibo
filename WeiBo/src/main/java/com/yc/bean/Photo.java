package com.yc.bean;

import org.springframework.stereotype.Component;

@Component
public class Photo {
	private Integer albumid;
	private String photo;
	public Integer getAlbumid() {
		return albumid;
	}
	public void setAlbumid(Integer albumid) {
		this.albumid = albumid;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "Photo [albumid=" + albumid + ", photo=" + photo + "]";
	}
	
}
