package com.yc.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Like;
import com.yc.dao.LikeDao;
import com.yc.dao.TopicDao;

@Service
public class LikeBiz {
	@Autowired
	private LikeDao ldao;
	@Autowired
	private TopicDao tdao;
	
	public Like select(Integer uid,Integer topicid){
		return ldao.select(uid, topicid);
	}
	//查看是否已赞
	public boolean islikeed(Integer uid,Integer topicid){
		Like like = ldao.select(uid, topicid);
		if(like==null){
			return false;
		}else
		return like.getZan()=='1'?true:false;
	}
	//点赞或取消赞
	public void like(Integer uid,Integer topicid){
		Like like = ldao.select(uid, topicid);
		if(like!=null){
			if(like.getZan()=='1'){
				ldao.cancellike(uid, topicid);
				tdao.cancellike(topicid);
				System.out.println("我取消赞了");
			}else{
				ldao.like(uid, topicid);
				tdao.like(topicid);
				System.out.println("我点赞了");
			}
		}else{
			ldao.insert(uid, topicid);
			tdao.like(topicid);
			System.out.println("我插入数据点赞了");
		}
	}
	
	public void cancellike(){
		
	}
	public void insert(){
		
	}
}
