package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.User;
@Repository
public interface UserDao {
	
	@Select("select * from user where uemail=#{uemail} and upass=#{upass}")
	List<User> select(User user);
	
	@Insert("insert into user(uname,upass,uemail,uregtime)"
			+ " values(#{uname},#{upass},#{uemail},#{uregtime})")
	Integer insert(User user);
}
