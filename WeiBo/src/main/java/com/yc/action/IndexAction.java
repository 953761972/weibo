package com.yc.action;

import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Datas;
import com.yc.bean.Page;
import com.yc.bean.SimpleEmail;
import com.yc.bean.Topic;
import com.yc.bean.User;
import com.yc.biz.CommentBiz;
import com.yc.biz.FollowerBiz;
import com.yc.biz.ReplyBiz;
import com.yc.biz.TopicBiz;
import com.yc.biz.UserBiz;
import com.yc.biz.impl.EmailSendManagerImpl;
import com.yc.util.VerifyCodeUtil;

@Controller
public class IndexAction {
	@Autowired
	private UserBiz ubiz;
	@Autowired
	private TopicBiz tbiz;
	@Autowired
	private ReplyBiz rbiz;
	@Autowired
	private CommentBiz cbiz;
	@Autowired
	private FollowerBiz fbiz;
	@Autowired
	private Datas datas;
	
	
	@Resource(name = "simpleEmailSendManagerImpl")
    private EmailSendManagerImpl emailSendManager;
	private Integer pagesize=5;
	
	@RequestMapping("reg.do")
	public String reg(User user,String code,Model m,HttpSession session){		
		if(code.toUpperCase().equals(session.getAttribute("vcode"))){			
			session.setAttribute("user",user);
				return "emailbangding";
			
		}else{
			m.addAttribute("msg", "验证码不正确");
			return "register";	
		}	
	}
	
	@RequestMapping("bangding.do")
	public void bangding(PrintWriter out,String ecode,Model m,HttpSession session){
        SimpleEmail simpleEmail = new SimpleEmail(); 
        User user=(User) session.getAttribute("user");
       // String code1 = VerifyCodeUtil.generateVerifyCode(6);
       // System.out.println("user="+user);
        System.out.println(ecode);
        simpleEmail.setContent("验证码："+ecode);
        Set<String> receivers = new HashSet<>();
        receivers.add(user.getUemail());
        simpleEmail.setSubject("您的验证码为：");
        simpleEmail.setToSet(receivers);
        simpleEmail.setHtml(false);
      //  System.out.println(simpleEmail.getToSet());
        try {
			emailSendManager.sendEmail(simpleEmail);
		} catch (MessagingException e) {
			out.print("发送失败！");
			e.printStackTrace();
		}
        System.out.println("发送成功");				
	}
	
	@RequestMapping("bd.do")
	public String bd(Model m,HttpSession session){
		User user=(User) session.getAttribute("user");
		Integer size=ubiz.insert(user);
		if(size>0){
		//	List<User> user1=ubiz.selectByID(user.getUid());
		//	session.setAttribute("user", user1.get(0));
			return "login";
		}else{
			m.addAttribute("msg", "绑定失败！请重试");
			return "emailbangding";	
		}	
	}
	
	@RequestMapping("login.do")
	public String login(User user,Model m,HttpSession session,boolean rember){
		//User user=(User) session.getAttribute("user");
		List<User> list=ubiz.select(user);
		System.out.println(rember);		
		if(list.size()>0){
			if(rember){
				//记住密码，写入cookie
			}
			//List<User> user1=ubiz.selectByID(user.getUid());
			System.out.println(list.get(0).toString());
			//把用户数据写入session
			session.setAttribute("logineduser", list.get(0));
			return "index";
		}else{
			m.addAttribute("msg", "用户名或密码错误！");
			return "login";	
		}	
	}
	
	@RequestMapping("index.do")
	public String index(String pageNum,HttpSession session,Model m){
		if(pageNum==null){
			pageNum="1";
		}
		User user=(User) session.getAttribute("logineduser");
		Page<Topic> page = tbiz.select(user.getUid(), Integer.parseInt(pageNum), pagesize);
		m.addAttribute("mypage", page);
		System.out.println(page.toString());
		datas.setFans(ubiz.fans(user.getUid()));
		datas.setFollowers(ubiz.followerCount(user.getUid()));
		datas.setTopicCounts(ubiz.topicCount(user.getUid()));
		m.addAttribute("datas", datas);
		System.out.println("成功返回__来自index.do");
		return "index";
	}
}
