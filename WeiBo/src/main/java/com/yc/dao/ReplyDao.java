package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.Reply;
@Repository
public interface ReplyDao {
	//查找所有回复
	@Select("select * from reply where commentid=#{commentid}")
	List<Reply> selectReplys(Integer commentid);
	//插入一条回复
	@Insert("insert into reply(commentid,rcontent,uid) values(#{commentid},#{rcontent},#{uid})")
	void insert(Reply reply); 
	
	//查找一条评论的所回复
	@Select("select * from reply where commentid=#{commentid}")
	@Results({
		@Result(property="user",column="uid",one=@One(select="com.yc.dao.UserDao.selectByID"))
	})
	List<Reply> selectByID(Integer commentid);
}
