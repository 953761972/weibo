package com.yc.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Follower;
import com.yc.bean.Group;
import com.yc.bean.Page;
import com.yc.bean.Topic;
import com.yc.bean.User;
import com.yc.dao.FollowerDao;
import com.yc.dao.GroupDao;

@Service
public class FollowerBiz {
	@Autowired
	private FollowerDao fbiz;
	@Autowired
	private GroupDao gbiz;
	//添加一个我的好友
	public void insert(Follower follower){
		fbiz.insert(follower);
	}
	//查找一个分组的所有好友信息
	public List<User> select(Integer uid,String groupname){
		return fbiz.selectByGroup(uid, groupname);
	}
	
	//移动一个好友到另一个分组
	public void move(Follower follower){
		fbiz.move(follower);
	}
	//删除一个好友
	public void delete(Integer followerid,Integer uid){
		fbiz.delete(followerid, uid);
	}
	//把一个分组所有好友的groupid设为NULL(删除分组时用)
	public void changeAllToNull(Group group){
		fbiz.changeAllToNull(group);
	}
	//查找用户所有好友
	public List<User> selectAll(Integer uid){
		return fbiz.selectAll(uid);
	}
	
	//查找用户所有好友(fenye)
	public Page<User> selectByPages(Integer uid,Integer pagenum,Integer size){
		int start=(pagenum-1)*size;
      //  List<User> user = fdao.select(uid,start,size);
        
		List<User> total=selectAll(uid);
	//	System.out.println(total+""+topics.toString());
		List<User> u= fbiz.selectByPages(uid, start, size);
		Page<User> p=new Page<User>(u,total.size(),pagenum,size);
		return p;
	}
	
	//插入一个好友到默认的未分组
	public void	insertToDefault(Follower follower){
		fbiz.insertToDefault(follower);
	}
	//查找未分组的好友
	public List<User> selectweifenzu(Integer uid) {
		return fbiz.selectWeiFenZu(uid);
	}
	
	//
	public void setgroup(User user,Integer uid){
		
		user.setGroupid(fbiz.selectGroupid( uid,user.getUid()));
		user.setBlongto(gbiz.selectgroupname(user.getGroupid()));

		
	}
}
