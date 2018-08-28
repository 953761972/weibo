package com.yc.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.dao.UpdateDAO;

public class UpdateServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
  private static final String CONTENT_TYPE = "text/html; charset=GBK";
  public UpdateServlet() {
    super();
  }   
  
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //设置编码方式
    response.setContentType(CONTENT_TYPE);
    ServletContext context = getServletContext();
    String target = "xiugai.jsp"; //设置跳转页面，servlet中，页面绝对地址不需要加工程名；而在jsp页面中则需要，比如:表单action指向的地址
    String msg = "";
    String uemail = (String)request.getSession().getAttribute("uemail"); //这里假设该用户登陆时的用户名你已经保存在session中
    String oldpsw = (String)request.getParameter("oldupass"); //getParameter("....")引号内的字符串对应页面文本框的name
    String newupass = (String)request.getParameter("newupass"); //新密码和确认密码是否相等，完全可以放在页面中，通过java scripts判断。（同样输入是否为空、字符是否合法、字符长度等，都可以放到那判断）
    String reupass = (String)request.getParameter("reupass");
    
      UpdateDAO ud = new UpdateDAO();    
      //成功查询到该用户
      if(ud.Update(uemail)){
        //数据库取出的密码跟页面提交密码比较 
        String	sql="updata user set upass=newupass where upass=oldupass";
        if(newupass.equals(reupass)){
        	msg="修改密码成功";
        }else{
        	msg="修改密码失败";
        }	
      }else{
        msg = "该用户名不存在！";
      }
      request.setAttribute("msg",msg);
      
      RequestDispatcher requestDis = context.getRequestDispatcher(target);
     requestDis.forward(request, response);
    }
    
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
  }      
}