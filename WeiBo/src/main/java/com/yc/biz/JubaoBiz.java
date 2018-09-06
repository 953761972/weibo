package com.yc.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Jubao;
import com.yc.dao.JubaoDao;
import com.yc.dao.TopicDao;

@Service
public class JubaoBiz {
  @Autowired
  private JubaoDao jdao;
  @Autowired
  private TopicDao tdao;
  //查询
   public List<Jubao> selectjubao(){
	return jdao.selectjubao();
	   
   }
   //删除
   
   public Integer delete(Integer topicid){   
	return tdao.admindelete(topicid);   
   }
   
   //删除记录
   
   public void deletejb(Integer jid){   
	 jdao.admindelete(jid);   
   }

public int select(String jid) {
	
	return jdao.select(jid).getTopicid();
}
}
