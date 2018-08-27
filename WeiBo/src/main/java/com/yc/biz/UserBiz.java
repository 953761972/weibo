package com.yc.biz;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.User;
import com.yc.dao.UserDao;
import com.yc.util.Utils;

@Service
public class UserBiz {
	
	@Autowired
	private UserDao udao;
	//注册一个用户
	public Integer insert(User user){
		//Timestamp now=new Timestamp(System.currentTimeMillis());
		//user.setUregtime(now);
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		return udao.insert(user);		
	}
	//用户登录验证
	public List<User> select(User user){
		//String upass = Utils.md5(user.getUpass());
		//user.setUpass(upass);
		return udao.select(user);
	}
	//查找一个用户
	public List<User> selectByID(Integer uid) {
		// TODO Auto-generated method stub
		return udao.selectByID(uid);
	}
	//统计用户好友数
	public int followerCount(Integer uid){
		return udao.FollowerCount(uid);
	}
	//统计用户粉丝数
	public int fans(Integer uid){
		return udao.fans(uid);
	}
	//统计用户微博数
	public int topicCount(Integer uid){
		return udao.topicCount(uid);
	}
}
