package com.yc.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.bean.User;

@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class UserBizTest {
	@Autowired
	private User user;
	@Autowired
	private UserBiz ubiz;
	
	@Test
	public void insertTest(){
		user.setUname("dddddd");
		user.setUpass("dddf");
		user.setUemail("1215@qq.com");
		ubiz.insert(user);
	}
	
	@Test
	public void uemailTest(){

		boolean s=ubiz.SelectUemail("4248066@qq.com");
		boolean s1 =ubiz.SelectUemail("374248066@qq.com");
		System.out.println(s+"/"+s1);
	}
}
