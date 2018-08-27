package com.yc.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.bean.Reply;

@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class LikeTest {
	@Autowired
	private LikeBiz lbiz;
	
	@Test
	public void liketest(){
		//System.out.println(lbiz.islikeed(100000, 1));
		lbiz.like(100000, 1);

	}
	@Test
	public void liketest1(){
		System.out.println(lbiz.islikeed(100000, 1));

	}
}
