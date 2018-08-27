package com.yc.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.bean.Like;

@Repository
public interface LikeDao {
	//查找点赞状态
	@Select("select * from zan where uid=#{uid} and topicid=#{topicid}")
	Like select(@Param("uid")Integer uid,@Param("topicid")Integer topicid);
	
	//点赞 如果已有点赞数据则修改点赞状态
	@Update("update zan set zan='1' where uid=#{uid} and topicid=#{topicid}")
	void like(@Param("uid")Integer uid,@Param("topicid")Integer topicid);
	
	//取消赞 如果已有点赞数据则修改点赞状态
	@Update("update zan set zan='0' where uid=#{uid} and topicid=#{topicid}")
	void cancellike(@Param("uid")Integer uid,@Param("topicid")Integer topicid);
	
	//第一次给该帖子点赞则插入一条数据
	@Insert("insert into zan(uid,topicid) values(#{uid},#{topicid})")
	void insert(@Param("uid")Integer uid,@Param("topicid")Integer topicid);
}
