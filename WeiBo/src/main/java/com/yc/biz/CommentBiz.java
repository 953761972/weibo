package com.yc.biz;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Comment;
import com.yc.bean.Page;
import com.yc.bean.Topic;
import com.yc.bean.User;
import com.yc.dao.CommentDao;
import com.yc.dao.TopicDao;

@Service
public class CommentBiz {
	@Autowired
	private CommentDao cdao;
	//查找一条微博的所有评论
	public List<Comment> selectComments(Integer topicid){
		return cdao.selectComments(topicid);
	}
	
	//查找一条微博的评论(分页)
	public Page<Comment> selectCommentsByPage(Integer topicid,Integer pagenum,Integer size){
		int start=(pagenum-1)*size;

		List<Comment> comments= cdao.selectCommentsByPage(topicid, start, size);
		long total=comments.size();
		System.out.println("comments:"+comments.toString());
		Page<Comment> p=new Page<Comment>(comments,total,pagenum,size);
		return p;
	}
	
	//评论一条微博
	public void insert(Comment comment){
		Timestamp now=new Timestamp(System.currentTimeMillis());
		comment.setCtime(now);
		cdao.insert(comment);
	}
	//被点赞
	public void like(Integer commentid){
		cdao.like(commentid);
	}
	//查找评论总数
}
