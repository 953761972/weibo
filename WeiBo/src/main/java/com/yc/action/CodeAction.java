package com.yc.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.util.VerifyCodeUtils;

@Controller
public class CodeAction {
	@RequestMapping("vc.do")
	public void code (HttpServletRequest request,HttpServletResponse response) throws IOException{
		// 定义图片大小
		int w = 200, h = 80;
		// 随机生成验证码
		String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
		
		// 将验证码添加到会话中，注意：在会话中保存的验证码的名称 vscode
		request.getSession().setAttribute("vcode", verifyCode);
		System.out.println(verifyCode);
		
		// 图形写给浏览器  
		response.setContentType("image/jpeg");
		// 发头控制浏览器不要缓存  
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		// 输出图片
		VerifyCodeUtils.outputImage(w, h, response.getOutputStream(),
				verifyCode);
	}
}
