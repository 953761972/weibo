package com.yc.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Topic;
import com.yc.bean.User;
import com.yc.biz.LikeBiz;
import com.yc.biz.TopicBiz;
import com.yc.biz.UserBiz;

@Controller
public class ZanAndComment {
	@Autowired
	private UserBiz ubiz;
	
	@Autowired
	private TopicBiz tbiz;
	@Autowired
	private Topic topic;
	@Autowired
	private LikeBiz lbiz;
	
	@RequestMapping("dianzan.do")
	public void Zan(String thistopicid,Model m,HttpSession session,HttpServletResponse reponse){
		User user=(User) session.getAttribute("logineduser");
		System.out.println(thistopicid);
		lbiz.like(user.getUid(), Integer.parseInt(thistopicid));
		
		//List l=new ArrayList();
		//Map<String, Integer> mm=new HashMap<String, Integer>();
		//l.add(mm);
		//mm.put("likeCount", 20);
		//String mm="[{likeCount"+":"+20+"}]";
		//JSONArray json=new JSONArray(l);
		renderData(reponse,tbiz.selectByID(Integer.parseInt(thistopicid)).getLikecount());
	}

	private void renderData(HttpServletResponse reponse, Object like) {
		try {
			reponse.getWriter().print(like);
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}

	private void renderData(HttpServletResponse reponse,JSONArray mm) {
		try {
			reponse.getWriter().print(mm);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}