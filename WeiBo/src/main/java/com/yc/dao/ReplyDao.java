package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.Reply;
@Repository
public interface ReplyDao {
	//查找所有回复
	@Select("select * from reply where commentid=#{commentid}")
	List<Reply> selectReplys(Integer commentid);
	//插入一条回复
	@Insert("insert into reply(commentid,rcontent,rtime,uid) values(#{commentid},#{rcontent},now(),#{uid})")
	void insert(Reply reply); 
}
