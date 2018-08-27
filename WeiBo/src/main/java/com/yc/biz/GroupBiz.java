package com.yc.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Group;
import com.yc.dao.FollowerDao;
import com.yc.dao.GroupDao;

@Service
public class GroupBiz {
	@Autowired
	private GroupDao gdao;
	@Autowired
	private FollowerDao fbiz;
	
	//新建一个分组
	public void insert(Group group){
		gdao.insert(group);
	}
	//查找用户所有分组
	public List<Group> select(Integer uid){
		return gdao.select(uid);
	}
	//修改一个分组名
	public void update(Group group){
		gdao.update(group);
	}
	//删除一个分组（需要把分组里的好友全部移到‘未分组’<即把好友的分组id设为NULL>）
	public void delete(Group group){
		gdao.delete(group);
		fbiz.changeAllToNull(group);
	}
}
