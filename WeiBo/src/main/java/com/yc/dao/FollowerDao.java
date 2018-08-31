package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.bean.Follower;
import com.yc.bean.Group;
import com.yc.bean.User;

@Repository
public interface FollowerDao {
	//往其中一个分组插入一个好友
	@Insert("insert into follower values(#{uid},#{followerid},#{groupid})")
	void insert(Follower follower);
	//查找一个分组的所有好友信息
	@Select("select * from user where uid in"
			+ "(select followerid from follower where groupid ="
			+ "(select groupid from groupp where groupname=#{groupname} and uid=#{uid}))")
	List<User> selectByGroup(@Param("uid")Integer uid,@Param("groupname")String groupname);
	
	//移动一个好友到另一个分组
	@Update("update follower set groupid=#{groupid} where uid=#{uid} and followerid=#{followerid}")
	void move(Follower follower);
	//删除一个好友
	@Delete("delete from follower where followerid=#{follower} and uid=#{uid}")
	void delete(Integer followerid,Integer uid);
	//把一个分组所有好友的groupid设为NULL(删除分组时用)
	@Update("update follower set groupid=NULL where uid=#{uid} and groupid=#{groupid}")
	void changeAllToNull(Group group);
	//查找用户所有好友
	@Select("select * from user where uid in(select followerid from follower where uid=#{uid})")
	List<User> selectAll(Integer uid);
	
	//查找用户所有好友(fenye)
	@Select("select * from user where uid in(select followerid  from follower where uid=#{uid}) limit #{start},#{size}")
	List<User> selectByPages(@Param("uid")Integer uid,@Param("start")Integer start,@Param("size")Integer size);
	
	//查找一个分组的好友数
	@Select("select count(*) from follower where groupid=#{groupid}")
	int SelectCount(Integer groupid);
	
	//往未分组中插入一个好友（）
	@Insert("insert into follower values(#{uid},#{followerid},0")
	void insertToDefault(Follower follower);
	
	//查找未分组
	@Select("select * from follower where uid=#{uid} and groupid=null")
	List<User> selectWeiFenZu(Integer uid);
	
	//
	@Select("select groupid from follower where uid=#{uid} and followerid=#{fuid}")
	Integer selectGroupid(@Param("uid")Integer uid, @Param("fuid")Integer fuid);
}
