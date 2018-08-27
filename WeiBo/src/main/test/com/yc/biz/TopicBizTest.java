package com.yc.biz;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.github.pagehelper.PageInfo;
import com.yc.bean.Page;
import com.yc.bean.Topic;
import com.yc.bean.User;

@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class TopicBizTest {
	@Autowired
	private TopicBiz tbiz;
	@Autowired
	private User user;
	@Autowired
	private Topic topic;
	
	@Test
	public void sesectTest(){
		user.setUid(100000);
		Page<Topic> list = tbiz.select(user.getUid(),1,1);
	//	System.out.println(list.getSize());
		System.out.println(list.toString());
		//System.out.println(list.getList().toString());
		//System.out.println(list.getList().size());
		System.out.println(list.getSize());
	}
	
	@Test
	public void insertTest(){
		topic.setUid(100000);
		topic.setContent("dddddd");
		topic.setImage("1.jpg");
		tbiz.insert(topic);
	}
	
	@Test
	public void liketest(){
		tbiz.like(1);
	}
	
	@Test
	public void fenyetest(){
		
	//int pagenum=1;
	@SuppressWarnings("unchecked")
	Page<?> p =tbiz.select(100000, 1, 5);
	System.out.println(p.getList().toString());
	@SuppressWarnings("unchecked")
	Page<?> p1 =tbiz.select(100000, 2, 5);
	System.out.println(p1.getList().toString());

	}
	
}




