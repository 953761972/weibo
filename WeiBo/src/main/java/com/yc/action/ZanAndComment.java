package com.yc.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.yc.bean.Topic;
import com.yc.bean.Comment;
import com.yc.bean.Page;
import com.yc.bean.User;
import com.yc.biz.CommentBiz;
import com.yc.biz.LikeBiz;
import com.yc.biz.TopicBiz;
import com.yc.biz.UserBiz;
import com.yc.util.UploadImg;

@Controller
public class ZanAndComment {
	@Autowired
	private UserBiz ubiz;
	@Autowired
	private CommentBiz cbiz;
	@Autowired
	private TopicBiz tbiz;
	@Autowired
	private Topic topic;
	@Autowired
	private LikeBiz lbiz;
	@Autowired
	private Comment comment;
	@Autowired
	private User user;
	
	
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
		renderData(reponse,tbiz.selectByID(Integer.parseInt(thistopicid)).getLikecount(),null);
	}

	public void renderData(HttpServletResponse reponse, Object like) {
		try {

			JSONObject jo=new JSONObject(like);
			String json=jo.toString();
			System.out.println(json);
			reponse.getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}

	public void renderData(HttpServletResponse reponse,Integer mm,Integer num) {
		try {
			reponse.getWriter().print(mm);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("comment.do")
	public String Comment(HttpSession session,String thistopicid,String contenttext,MultipartFile contentimg,Model m){
		System.out.println(thistopicid+"x"+contenttext+"x"+contentimg);
		user = (User) session.getAttribute("logineduser");
		comment.setCcontent(contenttext);
		comment.setTopicid(Integer.parseInt(thistopicid));
		comment.setUid(user.getUid());
		String realpath = session.getServletContext().getRealPath("/upload");
		String str=UploadImg.uploadimg(contentimg, realpath, user.getUid());
		if(str==null||"".equals(str)){
			
		}else{
		comment.setImage(str);
		}
		cbiz.insert(comment);
		m.addAttribute("msg", "发布成功");
		return "redirect:index.do";		
	}
	
	@RequestMapping("findcomment.do")
	public void findcomment(String topicid,Model m,HttpSession session,HttpServletResponse reponse){
		System.out.println("查找评论");
		if(topicid!=null){
			Page<Comment> data = cbiz.selectCommentsByPage(Integer.parseInt(topicid), 1, 5);
			renderData(reponse,data);
			System.out.println("完成数据推送");
		}
		System.out.println("查找评论退出");
	}
	
}