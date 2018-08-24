package com.yc.biz.impl;

import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;
import javax.mail.MessagingException;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.bean.SimpleEmail;
import com.yc.util.VerifyCodeUtil;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/beans.xml")
public class TestSm {
	@Resource(name="dataSource")
	private BasicDataSource dataSource;
	
	@Resource(name="sqlSessionFactory")
	private DefaultSqlSessionFactory sqlSessionFactory;
	
	@Resource(name="sqlSession")
	private SqlSessionTemplate sqlSession;
	
	@Resource(name = "simpleEmailSendManagerImpl")
    private EmailSendManagerImpl emailSendManager;
	
	@Test
	public void testDataSource() throws SQLException {
		System.out.println(dataSource.getConnection());
	}
	
	@Test
	public void testSqlSessionFactory(){
		System.out.println(sqlSessionFactory);
	}
	
	@Test
	public void testSqlSession(){
		System.out.println(sqlSession);
	}
	
	
	
	

    

    /**
     * 发送HTML格式的邮件
     * 
     * @throws MessagingException
     * @throws Exception 
     * @throws TemplateException 
     */
    @Test
    public void sendHTMLEmail() throws Exception {
        SimpleEmail simpleEmail = new SimpleEmail();
        //VerifyCodeUtil verifyCodeUtil=new VerifyCodeUtil();
        //simpleEmail.setSubject("这里是主题");        
        String code = VerifyCodeUtil.generateVerifyCode(6);
        System.out.println(code);
        simpleEmail.setContent("验证码："+code);
        Set<String> receivers = new HashSet<>();
        receivers.add("953761972@qq.com");
       // receivers.add("xzqxzq953761972@gmail.com");
        simpleEmail.setSubject("您的验证码为：");
        simpleEmail.setToSet(receivers);
        simpleEmail.setHtml(false);
       /* simpleEmail.setContent("<html><head><meta http-equiv=\"Content-Type\" "
        + "content=\"text/html; charset=UTF-8\"></head>"
        + "<body><div align=\"center\" style=\"color:#F00\">"
        + "<h2>测试在Spring中发送带HTML格式的邮件</h2></div></body></html>");*/
        //simpleEmail.setAttachment(false);
  
        //Map<String, File> attachments=new HashMap<String,File>();
        System.out.println(simpleEmail.getToSet());
        emailSendManager.sendEmail(simpleEmail);
        System.out.println("发送成功");
    }
/**
   * 发送简单邮件
   * @throws MessagingException
   */
  @Test
  public void sendSimpleEmail() throws MessagingException {
    SimpleEmail simpleEmail = new SimpleEmail();
    simpleEmail.setSubject("测试在Spring中发送邮件");

    Set<String> receivers = new HashSet<>();
    receivers.add("953761972@qq.com");
    simpleEmail.setToSet(receivers);

    simpleEmail.setHtml(false);
    simpleEmail.setContent("Netty是由JBOSS提供的一个java开源框架。Netty提供异步的、"
        + "事件驱动的网络应用程序框架和工具，用以快速开发高性能、高可靠性的网络服务器和客户端程序。");
    emailSendManager.sendEmail(simpleEmail);
  }
	
}
