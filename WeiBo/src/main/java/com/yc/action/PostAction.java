package com.yc.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.yc.bean.Topic;
import com.yc.bean.User;
import com.yc.biz.TopicBiz;
import com.yc.biz.UserBiz;

@Controller
public class PostAction {
	@Autowired
	private UserBiz ubiz;

	@Autowired
	private TopicBiz tbiz;
	@Autowired
	private Topic topic;

	@RequestMapping("post.do")
	public String post(MultipartFile contentimg, HttpSession session, Model model, String contenttext) {
		System.out.println(contenttext);
		User user = (User) session.getAttribute("logineduser");
		// User user=new User();
		// user.setUid(123);
		// 判断是否有图片
		if ("".equals(contentimg.getOriginalFilename()) || contentimg.getOriginalFilename() == null) {
			System.out.println("wutu");
		} else {
			// 有则上传
			File file = null;
			String filename = contentimg.getOriginalFilename();

			String realpath = session.getServletContext().getRealPath("/upload");
			System.out.println("realpath:"+realpath);
			System.out.println("filename:"+filename);
			// 获得用户目录，不存在则创建
			String userDir = realpath + "\\" + user.getUid();
			if (new File(userDir).exists() == false) {
				File ufile = new File(userDir);
				// 创建用户目录
				ufile.mkdir();
			}
			// 获得当前时间作为文件名的一部分
			Date t = new Date();
			SimpleDateFormat tt = new SimpleDateFormat("yyyy-MM-dd HH：mm：ss");
			String ttt = tt.format(t);
			file = new File(userDir + "\\" + ttt + "_" + filename);
			// 上传文件到用户目录
			try {
				contentimg.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println("上传成功" + userDir + "\\" + ttt + "-" + filename);
			String str="upload" + "\\" +user.getUid()+"\\"+ ttt + "_" + filename;
			System.out.println("str"+str);
			String str1=str.replace("\\", "/");
			System.out.println("str"+str1);
			//str1="file:///"+str1;
			topic.setImage(str1);
		}
		
		
		// 存微博数据到数据库
		topic.setContent(contenttext);
		topic.setUid(user.getUid());
		tbiz.insert(topic);
		model.addAttribute("msg", "发布成功");
		return "redirect:index.do";
	}
}
