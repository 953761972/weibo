package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.bean.Album;

@Repository
public interface AlbumDao {
	//查找用户所有相册
	@Select("select * from album where uid=#{uid}")
	List<Album> select(Integer uid);
	
	//新增一个相册
	@Insert("insert into album values(,#{uid},#{albumname})")
	void insert(Album album);
	//删除一个相册
	@Delete("delete from album where albumname=#{albumname} and uid=#{uid}")
	void delete(String albumname,Integer uid);
	//修改相册名字
	@Update("update album set albumname=#{albumname} where uid=#{uid}")
	void update(Album album);
}
