package com.yc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.bean.Jubao;
import com.yc.bean.Topic;

@Repository
public interface JubaoDao {
      
	//查找所有的文章和发帖
	@Select("select * from jubao")
	List<Jubao> selectjubao();
	//删除记录
    @Delete("delete from jubao where jid=#{jid}")
	void admindelete(Integer jid);

    @Select("select * from jubao where jid=#{jid}")
    Jubao select(String jid);


}
