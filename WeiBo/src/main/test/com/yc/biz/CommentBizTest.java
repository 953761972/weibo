package com.yc.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.yc.bean.Comment;
import com.yc.bean.Topic;
import com.yc.bean.User;

@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class CommentBizTest {
	@Autowired
	private CommentBiz cbiz;
	@Autowired
	private Comment comment;
	
	@Test
	public void insertTest(){
		comment.setCcontent("dsf");
		comment.setTopicid(1);
		comment.setUid(100001);
		cbiz.insert(comment);
	}
	@Test
	public void likeTest(){
		cbiz.like(2);
	}
	
	@Test
	public void testselectcomment(){
		cbiz.selectCommentsByPage(24, 1, 5);
	}
}
