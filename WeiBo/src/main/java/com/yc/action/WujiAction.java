package com.yc.action;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.SimpleEmail;
import com.yc.biz.UserBiz;
import com.yc.biz.impl.EmailSendManagerImpl;

@Controller
public class WujiAction {
	
	@Resource(name = "simpleEmailSendManagerImpl")
    private EmailSendManagerImpl emailSendManager;
      @RequestMapping("wangji.do")
	 	private void showPersonal(String uemail,String ecode,HttpServletResponse res) throws ServletException, IOException{
    	 System.out.println(uemail);
    	  UserBiz ubiz=new UserBiz();
    	 if(true){
    		 System.out.println("正在发送....."+ecode);
    		 
    		 SimpleEmail simpleEmail = new SimpleEmail(); 
       	  simpleEmail.setContent("验证码："+ecode);
             Set<String> receivers = new HashSet<>();
             receivers.add(uemail);
             simpleEmail.setSubject("您的验证码为：");
             simpleEmail.setToSet(receivers);
             simpleEmail.setHtml(false);
             try {
   			emailSendManager.sendEmail(simpleEmail);   			
             } catch (MessagingException e) {   		
   			e.printStackTrace();
   			System.out.print("发送失败！");
   		}
             System.out.print("发送成功！"); 
             res.getWriter().println("1");
    	 } else{
    		 System.out.println("邮箱发送失败");
    		 res.getWriter().println("-1");
    	 }
    	 
	}
      @RequestMapping("xiugai.do")
	public String xiugai(Model m,String uemail,String newPass,String rePass)throws IOException{
    	  UserBiz ubiz=new UserBiz();
    	  System.out.println(newPass+"/"+rePass+"uemail"+uemail);
    	if(newPass.equals(rePass)){
    		if(ubiz.xiugai(newPass, uemail)>0){
    			m.addAttribute("msg","修改成功");
    			return "login";
    		}else{
    			m.addAttribute("msg","修改出错！");
    		}		
    	}else{
    		m.addAttribute("msg","两次密码不一致");
    	}
		return "xiugai";
	}
}
