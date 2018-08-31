package com.yc.biz;

import java.util.ArrayList;
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
	//新建默认分组
	public void insertdefault(Integer uid){
		Group g=new Group();
		Group g1=new Group();
		Group g2=new Group();
		Group g3=new Group();
		Group g4=new Group();
		Group g5=new Group();
		List<Group> list=new ArrayList<Group>();
		g.setGroupname("黑名单");
		g.setUid(uid);
		g1.setGroupname("特别关注");
		g1.setUid(uid);
		g2.setGroupname("新闻");
		g2.setUid(uid);
		g3.setGroupname("动漫");
		g3.setUid(uid);
		g4.setGroupname("同学");
		g4.setUid(uid);
		g5.setGroupname("同事");
		g5.setUid(uid);
		list.add(g);
		list.add(g1);
		list.add(g2);
		list.add(g3);
		list.add(g4);
		list.add(g5);
		for(int i=0;i<list.size();i++){
			gdao.insertdefault(list.get(i));
		}
		
	}
}
