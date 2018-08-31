package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.bean.Guanli;
import com.yc.bean.User;


@Repository
public interface GuanliDao {
	//用于登录
		@Select("select * from guanli where gemail=#{gemail} and gpass=#{gpass}")
		List<Guanli> select(Guanli guanli) ;
		
		//查找邮箱
		@Select("select * from guanli where gemail=#{gemail}")
		List<Guanli> selectGemail(String gemail);
		
		@Update("update guanli set gpass=#{gpass} where gemail=#{gemail}")
		int update(@Param("gpass")String gpass,@Param("gemail")String gemail);
}
