package com.yc.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.Jubao;
import com.yc.biz.JubaoBiz;

@Controller
public class JubaoAction {
   @Autowired
   private JubaoBiz jbiz;
   //删除
   @RequestMapping("shanchu.do")
   public  void delete(HttpServletResponse response,String jid){	

	   try {
		   System.out.println("正在删除：jid="+jid);

		  int id= jbiz.select(jid);
		   jbiz.delete(id);
		   jbiz.deletejb(Integer.parseInt(jid));
		   System.out.println("删除成功：topicid="+id);
		response.getWriter().print("1");
	} catch (Exception e) {
		e.printStackTrace();
	}
	   
   }
   @RequestMapping("chazhao.do")
   public  String select(Model m,HttpSession session){
	  List<Jubao> list = jbiz.selectjubao();
	  System.out.println(list.toString());
	  m.addAttribute("all",list );
	  m.addAttribute("msg","fack");
	   return "type";
   } 
}
