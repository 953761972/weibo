package com.yc.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Page;
import com.yc.bean.Topic;
import com.yc.dao.TopicDao;
@Service
public class TopicBiz {
	@Autowired
	private TopicDao tdao;
	//@Autowired
	//private PageHelper pageHelper;
	
	//查找用户所有帖子（分页）
	public Page<Topic> select(Integer uid,Integer pagenum,Integer size){
		int start=(pagenum-1)*size;
        List<Topic> topics = tdao.select(uid,start,size);
        
		long total=topicCount(uid);
		System.out.println(total+""+topics.toString());
		Page<Topic> p=new Page<Topic>(topics,total,pagenum,3);
		return p;		
	}
	//发帖
	public void insert(Topic topic){
		//Timestamp now=new Timestamp(System.currentTimeMillis());
		//topic.setPosttime(now);
		tdao.insert(topic);
	}
	//被点赞
	public void like(Integer topicid){
		tdao.like(topicid);
	}
	//用户帖子数
	public int topicCount(Integer uid){
		return tdao.topicCount(uid);
	}
	//查找一条帖子
	public Topic selectByID(Integer topicid){
		return tdao.selectByID(topicid);
	}
}
