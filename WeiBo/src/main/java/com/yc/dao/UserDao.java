package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.User;
@Repository
public interface UserDao {
	//用于登录
	@Select("select * from user where uemail=#{uemail} and upass=#{upass}")
	List<User> select(User user);
	//用于注册
	@Insert("insert into user(uname,upass,uemail,uregtime)"
			+ " values(#{uname},#{upass},#{uemail},now())")
	@Options(useGeneratedKeys=true,keyColumn="uid",keyProperty="uid")
	int insert(User user);
	//用于注册后查一次信息
	@Select("select * from user where uid=#{uid}")
	List<User> selectByID(int uid);
	//统计用户的好友数
	@Select("select count(*) from follower where uid=#{uid}")
	int FollowerCount(Integer uid);
	//统计有多少人关注我（粉丝）
	@Select("select count(*) from follower where followerid=#{uid}")
	int fans(Integer uid);
	//统计用户发的微博数
	@Select("select count(*) from topic where uid=#{uid}")
	int topicCount(Integer uid);
	

}
