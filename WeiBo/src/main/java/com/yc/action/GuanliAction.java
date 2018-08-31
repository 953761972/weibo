package com.yc.action;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Guanli;
import com.yc.bean.SimpleEmail;
import com.yc.bean.User;
import com.yc.biz.Guanlibiz;
import com.yc.biz.impl.EmailSendManagerImpl;

@Controller
public class GuanliAction {
	@Autowired
	private Guanlibiz gbiz ;
    
	//管理员登录
	@RequestMapping("guanli.do")
	public String login1(Guanli guanli,Model m,HttpSession session){
		//User user=(User) session.getAttribute("user");
		System.out.println(guanli.toString());
		List<Guanli> list=gbiz.select(guanli);			
		if(list.size()>0){
			//把用户数据写入session
			session.setAttribute("logineduser", list.get(0));
			return "index1";
		}else{
			m.addAttribute("msg", "用户名或密码错误！");
			return "guanli";	
		}	
	}
	//管理员验证
	@Resource(name = "simpleEmailSendManagerImpl")
    private EmailSendManagerImpl emailSendManager;
      @RequestMapping("wangji1.do")
	 	private void showPersonal(String gemail,String ecode,HttpServletResponse res) throws ServletException, IOException{
    	 System.out.println(gemail);
    	//  UserBiz ubiz=new UserBiz();
    	 if(true){
    		 System.out.println("正在发送....."+ecode);
    		 
    		 SimpleEmail simpleEmail = new SimpleEmail(); 
       	  simpleEmail.setContent("验证码："+ecode);
             Set<String> receivers = new HashSet<>();
             receivers.add(gemail);
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
      @RequestMapping("xiugai1.do")
  	public String gxiugai(Model m,String gemail,String newPass,String rePass)throws IOException{
      	  //UserBiz ubiz=new UserBiz();
      	  System.out.println(newPass+"/"+rePass+"gemail"+gemail);
      	if(newPass.equals(rePass)){
      		if(gbiz.gxiugai(newPass, gemail)>0){
      			m.addAttribute("msg","修改成功");
      			return "guanli";
      		}else{
      			m.addAttribute("msg","修改出错！");
      		}		
      	}else{
      		m.addAttribute("msg","两次密码不一致");
      	}
  		return "xiugai";
  	}     
	
}  
