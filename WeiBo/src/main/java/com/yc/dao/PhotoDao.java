package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.Photo;

@Repository
public interface PhotoDao {
	//往相册里添加照片
	@Insert("insert into photos values(#{albumid},#{photo},#{uid})")
	void insert (Photo photo);
	
	//删除一张照片
	@Delete("delete from photo where uid=#{uid} and photo=#{photo}")
	void delete(Photo photo);
	//查找用户所有相片
	@Select("select * from photos where uid=#{uid}")
	List<Photo> selectAll(Integer uid);
	//查找一个相册下的所有相片
	@Select("select * from photos where albumid=#{albumid}")
	List<Photo> selectByAlbum(Integer albumid);
	
}
