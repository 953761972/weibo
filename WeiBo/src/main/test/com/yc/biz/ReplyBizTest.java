package com.yc.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.bean.Reply;

@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class ReplyBizTest {
	@Autowired
	private ReplyBiz rbiz;
	@Autowired
	private Reply reply;
	
	@Test
	public void insertTest(){
		reply.setCommentid(1);
		reply.setRcontent("fs");
		reply.setUid(100001);
		rbiz.insert(reply);
	}
}
