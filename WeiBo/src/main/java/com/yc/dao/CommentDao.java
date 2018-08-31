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

import com.yc.bean.Comment;
import com.yc.bean.Topic;
@Repository
public interface CommentDao {
	//查找一条微博的所有评论
	@Select("select * from comment where topicid=#{topicid}")
	@Results({
		@Result(property="replys",column="commentid",one=@One(select="com.yc.dao.ReplyDao.selectReplys"))
	})
	List<Comment> selectComments(Integer topicid);
	
	//查一条微博的评论数
	@Select("select count(*) from comment where topicid=#{topicid}")
	int SelectCount(Integer topicid);
	
	//查找一条微博的评论(分页)
	@Select("select * from comment where topicid=#{topicid}  order by commentid DESC limit #{start},#{size}")
	@Results({
		@Result(property="commentid",column="commentid"),
		@Result(property="replys",column="commentid",one=@One(select="com.yc.dao.ReplyDao.selectByID")),
		@Result(property="user",column="uid",one=@One(select="com.yc.dao.UserDao.selectByID"))
	})
	List<Comment> selectCommentsByPage(@Param("topicid")Integer topicid,@Param("start")Integer start,@Param("size")Integer size);
	
	
	//评论一条微博
	@Insert("insert into comment(topicid,ccontent,ctime,uid,image) values(#{topicid},#{ccontent},now(),#{uid},#{image})")
	void insert(Comment comment);
	//被点赞
	@Update("update comment set likecount=likecount+1 where commentid=#{commentid}")
	void like(Integer commentid);
}
