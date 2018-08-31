package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.bean.Topic;
import com.yc.bean.User;

@Repository
public interface TopicDao {
	
	//查找用户所有帖子
	@Select("select * from topic where uid=#{uid} order by topicid DESC limit #{start},#{size}")
	//@Results({
	//	@Result(property="comments",column="topicid",one=@One(select="com.yc.dao.CommentDao.selectComments"))
	//})
	@Results({
		@Result(property="commentcount",column="topicid",one=@One(select="com.yc.dao.CommentDao.SelectCount")),

		@Result(property="user",column="uid",one=@One(select="com.yc.dao.UserDao.selectByID"))
	})
	List<Topic> select(@Param("uid")Integer uid,@Param("start")Integer start,@Param("size")Integer size);
	//发帖
	@Insert("insert into topic(uid,content,image) values(#{uid},#{content},#{image})")
	void insert(Topic topic);
	//被点赞
	@Update("update topic set likecount=likecount+1 where topicid=#{topicid}")
	void like(Integer topicid);
	
	//被点赞
	@Update("update topic set likecount=likecount-1 where topicid=#{topicid}")
	void cancellike(Integer topicid);
	//用户帖子数
	@Select("select count(*) from topic where uid=#{uid}")
	int topicCount(Integer uid);
	
	//查找一条帖子
	@Select("select * from topic where topicid=#{topicid}")
	Topic selectByID(Integer topicid);
		
	//转发帖
	@Insert("insert into topic(uid,content,image,transpondfrom,transfromuid,transfromuname) values(#{uid},#{content},#{image},#{transpondfrom},#{transfromuid},#{transfromuname})")
	void transpond(Topic topic);
}
