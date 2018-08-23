package com.yc.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.yc.bean.User;
import com.yc.dao.UserDao;
import com.yc.util.Utils;

@Resource
public class UserBiz {
	
	@Autowired
	private UserDao udao;

	
	public Integer insert(User user){
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		return udao.insert(user);		
	}
	
	public List<User> select(User user){
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		return udao.select(user);
	}
}
