package com.yc.biz;


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
	@Autowired
	private GroupBiz gbiz;
	//注册一个用户
	public Integer insert(User user){
		//Timestamp now=new Timestamp(System.currentTimeMillis());
		//user.setUregtime(now);
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		int uid=udao.insert(user);
		gbiz.insertdefault(uid);
		return 	uid;	
	}
	//用户登录验证
	public List<User> select(User user){
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		return udao.select(user);
	}
	//查找一个用户
	public User selectByID(Integer uid) {
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

	//查找邮箱
	public boolean SelectUemail(String uemail){
		
			List<User> u=udao.selectUemail(uemail);
			System.out.println(u.toString());
			System.out.println(u.size());
			return u.size()<=0?false:true;		
	}

	
	//修改密码
	public int xiugai(String upass,String uemail){
		       upass=Utils.md5(upass);
		      return  udao.updata(upass,uemail);
		      
		        
		        	
		        
	}

}
