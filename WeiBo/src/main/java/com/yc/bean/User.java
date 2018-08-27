package com.yc.bean;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class User {
	private Integer uid;
	private String uname;
	private String upass;
	private String uemail;
	private String uhead;
	private Timestamp uregtime;
	//private String uregtime;
	private String realname;
	private String local;
	private Integer sex;
	private String emotion;
	private Date birthday;
	private String booldtype;
	private String resume;
	private String wechat;
	private String label;
	private String backgroundimg;
	private String headbackground;
	
	
	private List<Group> groups;
	private List<Album> albums;
	private List<Topic> topics;
	
	
	public String getBackgroundimg() {
		return backgroundimg;
	}


	public void setBackgroundimg(String backgroundimg) {
		this.backgroundimg = backgroundimg;
	}


	public String getHeadbackground() {
		return headbackground;
	}


	public void setHeadbackground(String headbackground) {
		this.headbackground = headbackground;
	}


	public List<Group> getGroups() {
		return groups;
	}


	public void setGroups(List<Group> groups) {
		this.groups = groups;
	}


	public List<Album> getAlbums() {
		return albums;
	}


	public void setAlbums(List<Album> albums) {
		this.albums = albums;
	}


	public List<Topic> getTopics() {
		return topics;
	}


	public void setTopics(List<Topic> topics) {
		this.topics = topics;
	}


	public Integer getUid() {
		return uid;
	}


	public void setUid(Integer uid) {
		this.uid = uid;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getUpass() {
		return upass;
	}


	public void setUpass(String upass) {
		this.upass = upass;
	}


	public String getUemail() {
		return uemail;
	}


	public void setUemail(String uemail) {
		this.uemail = uemail;
	}


	public String getUhead() {
		return uhead;
	}


	public void setUhead(String uhead) {
		this.uhead = uhead;
	}


	public Timestamp getUregtime() {
		return uregtime;
	}


	public void setUregtime(Timestamp now) {
		this.uregtime = now;
	}


	public String getRealname() {
		return realname;
	}


	public void setRealname(String realname) {
		this.realname = realname;
	}


	public String getLocal() {
		return local;
	}


	public void setLocal(String local) {
		this.local = local;
	}


	public Integer getSex() {
		return sex;
	}


	public void setSex(Integer sex) {
		this.sex = sex;
	}


	public String getEmotion() {
		return emotion;
	}


	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}


	public Date getBirthday() {
		return birthday;
	}


	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}


	public String getBooldtype() {
		return booldtype;
	}


	public void setBooldtype(String booldtype) {
		this.booldtype = booldtype;
	}


	public String getResume() {
		return resume;
	}


	public void setResume(String resume) {
		this.resume = resume;
	}


	public String getWechat() {
		return wechat;
	}


	public void setWechat(String wechat) {
		this.wechat = wechat;
	}


	public String getLabel() {
		return label;
	}


	public void setLabel(String label) {
		this.label = label;
	}


	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upass=" + upass + ", uemail=" + uemail + ", uhead=" + uhead
				+ ", uregtime=" + uregtime + ", realname=" + realname + ", local=" + local + ", sex=" + sex
				+ ", emotion=" + emotion + ", birthday=" + birthday + ", booldtype=" + booldtype + ", resume=" + resume
				+ ", wechat=" + wechat + ", label=" + label + ", backgroundimg=" + backgroundimg + ", headbackground="
				+ headbackground + ", groups=" + groups + ", albums=" + albums + ", topics=" + topics + "]";
	}


	
}
