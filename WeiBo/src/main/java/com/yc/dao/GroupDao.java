package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.bean.Group;

@Repository
public interface GroupDao {
	//查找一个用户所有分组
	@Select("select * from groupp where uid=#{uid}")
	List<Group> select(Integer uid);
	
	//查找一个用户所有分组名
	//@Select("select groupname from groupp where uid=#{uid}")
	//List<String> selectGname(Integer uid);
	
	//新增一个分组
	@Insert("insert into groupp values(,#{uid},#{groupname})")
	void insert (Group group);
	//修改一个分组的分组名
	@Update("update groupp set groupname=#{groupname} where uid=#{uid}")
	void update(Group group);
	//删除一个分组（需要把分组里的好友全部移到‘未分组’<即把好友的分组id设为NULL>）
	@Delete("delete from group where groupname=#{groupname} and uid=#{uid}")
	void delete(Group group);
}
