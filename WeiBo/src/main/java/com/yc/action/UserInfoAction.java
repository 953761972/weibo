package com.yc.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Group;
import com.yc.bean.Page;
import com.yc.bean.Topic;
import com.yc.bean.User;
import com.yc.biz.FollowerBiz;
import com.yc.biz.GroupBiz;
import com.yc.biz.UserBiz;
@Controller
public class UserInfoAction {
	@Autowired
	private User user;
	@Autowired
	private UserBiz ubiz;
	@Autowired
	private FollowerBiz fbiz;
	@Autowired
	private GroupBiz gbiz;
	
	int size=10;
	@RequestMapping("userinfocard.do")
	public void userinfocard(String user_id,String info_card,HttpServletResponse reponse){
		try {
			ubiz.selectByID(Integer.parseInt(user_id));
			String info="";
			reponse.getWriter().print(info);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("myfriends.do")
	public String myfriends(Model m,HttpSession session,String pagenum){
		User user=(User) session.getAttribute("logineduser");
		 Page<User> page = fbiz.selectByPages(user.getUid(), Integer.parseInt(pagenum), size);
		for(int i=0;i<page.getList().size();i++){
			fbiz.setgroup(page.getList().get(i), user.getUid());
			System.out.println(page.getList().get(i).toString());
		}
		 
		 List<Group> groups= gbiz.select(user.getUid());
		m.addAttribute("allCount", fbiz.selectAll(user.getUid()).size());
		m.addAttribute("weifenzu", fbiz.selectweifenzu(user.getUid()).size());

		 m.addAttribute("mypage", page);
		 m.addAttribute("mygroup", groups);
		return "group";
		
	}
}
