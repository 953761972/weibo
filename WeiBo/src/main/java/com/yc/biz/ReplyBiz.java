package com.yc.biz;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Reply;
import com.yc.dao.ReplyDao;

@Service
public class ReplyBiz {
	@Autowired
	private ReplyDao rdao;

	//插入一条回复
	public void insert(Reply reply){
		//Timestamp now=new Timestamp(System.currentTimeMillis());
		//reply.setRtime(now);
		rdao.insert(reply);
	}
	//查找所有回复
	public List<Reply> select(Integer commentid){
		return rdao.selectReplys(commentid);
	}
}
