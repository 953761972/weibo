package com.yc.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yc.bean.Reply;
import com.yc.bean.User;
import com.yc.biz.ReplyBiz;

@Controller
public class replyAction {
	@Autowired
	private ReplyBiz rbiz;
	@Autowired
	private Reply reply;
	@RequestMapping("reply.do")
	public String lanjie(Model m,HttpSession session,String thiscommentid,String replycontent){
		User user=(User) session.getAttribute("logineduser");
		ModelAndView mav=new ModelAndView("index");
		try{
			System.out.println(user.toString());
			System.out.println(thiscommentid+"cccc"+replycontent);
			reply.setUid(user.getUid());
			reply.setRcontent(replycontent);
			reply.setCommentid(Integer.parseInt(thiscommentid));
			rbiz.insert(reply);
		}catch(Exception e){
			e.printStackTrace();
			//mav.addObject("msg","服务器繁忙！");/
			m.addAttribute("msg", "服务器繁忙");
			System.out.println("插入回复失败");
			return "index";
		}

		System.out.println("插入回复成功");
		//mav.addObject("msg","回复成功");
		m.addAttribute("msg", "回复成功");
		return "index";
		//System.out.println("插入回复失败");
	}
}
