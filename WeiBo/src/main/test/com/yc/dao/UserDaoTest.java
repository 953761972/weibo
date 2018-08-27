package com.yc.dao;

import java.sql.Date;
import java.sql.Timestamp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.util.Utils;
import com.yc.bean.User;

import junit.framework.Assert;
@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class UserDaoTest {
	
	@Autowired
	private User user;
	
	@Autowired
	private UserDao udao;

	@Test
	public void test(){
		Assert.assertNotNull(user);
		Assert.assertNotNull(udao);
	}
	
	@Test
	public void selectTest(){
		user.setUemail("953761972@qq.com");
		user.setUpass("123");
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass);
		udao.select(user);
	}
	
	@Test
	public void inserttest(){
		user.setUemail("123456@qq.com");
		user.setUname("123456");
		user.setUpass("123456-"); 
		String upass = Utils.md5(user.getUpass());
		user.setUpass(upass); 		
		//Timestamp now=new Timestamp(System.currentTimeMillis());
		//user.setUregtime(now);
		udao.insert(user);
	}
}
