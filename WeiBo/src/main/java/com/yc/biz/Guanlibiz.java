package com.yc.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Guanli;
import com.yc.dao.GuanliDao;

@Service
public class Guanlibiz {
	@Autowired
	private GuanliDao gdao;
	
	//管理员登录验证
	public List<Guanli> select(Guanli guanli){
		//String gpass = Utils.md5(guanli.getGpass());
		//guanli.setGpass(gpass);
		return gdao.select(guanli);
	}
	
	//查找管理员
	public boolean SelectGemail(String gemail){
		
		List<Guanli> g=gdao.selectGemail(gemail);
		System.out.println(g.toString());
		System.out.println(g.size());
		return g.size()<=0?false:true;		
}
		
		//修改管理员密码
		public int gxiugai(String gpass,String guser){
			    //   gpass=Utils.md5(gpass);
			      return  gdao.update(gpass,guser);		        
		}
}
