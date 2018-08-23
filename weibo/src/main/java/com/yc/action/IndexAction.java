package com.yc.action;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.User;

@Controller
public class IndexAction {
	@RequestMapping("reg.do")
	public String reg(User user,String code,Model m){
		if(user.getUname().equals("xzq")&&user.getUpass().equals("123")){
			m.addAttribute("user",user);
			return "emailbangding";	
		}else
		m.addAttribute("msg", "用户名或密码错误")	;
		return "register";		
	}
}
