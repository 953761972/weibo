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

import com.yc.bean.SimpleEmail;
import com.yc.bean.User;
import com.yc.biz.UserBiz;
import com.yc.biz.impl.EmailSendManagerImpl;
import com.yc.util.VerifyCodeUtil;

@Controller
public class IndexAction {
	@Autowired
	private UserBiz ubiz;
	@Resource(name = "simpleEmailSendManagerImpl")
    private EmailSendManagerImpl emailSendManager;
	
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
			List<User> user1=ubiz.selectByID(user.getUid());
			session.setAttribute("user", user1.get(0));
			return "index";
		}else{
			m.addAttribute("msg", "绑定失败！请重试");
			return "emailbangding";	
		}	
	}
}
