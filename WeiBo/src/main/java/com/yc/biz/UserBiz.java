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

	public Integer insert(User user){
		Timestamp now=new Timestamp(System.currentTimeMillis());
		user.setUregtime(now);
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		return udao.insert(user);		
	}
	
	public List<User> select(User user){
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		return udao.select(user);
	}

	public List<User> selectByID(Integer uid) {
		// TODO Auto-generated method stub
		return udao.selectByID(uid);
	}
}
