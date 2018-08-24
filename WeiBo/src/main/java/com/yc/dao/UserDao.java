package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.User;
@Repository
public interface UserDao {
	
	@Select("select * from user where uemail=#{uemail} and upass=#{upass}")
	List<User> select(User user);
	
	@Insert("insert into user(uname,upass,uemail,uregtime)"
			+ " values(#{uname},#{upass},#{uemail},#{uregtime})")
	@Options(useGeneratedKeys=true,keyColumn="uid",keyProperty="uid")
	int insert(User user);
	
	@Select("select * from user where uid=#{uid}")
	List<User> selectByID(int uid);
}
