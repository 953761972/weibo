package com.yc.biz.impl;

import java.util.Set;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import com.yc.bean.SimpleEmail;
import com.yc.biz.EmailSendManager;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;


@Component("simpleEmailSendManagerImpl")
public class EmailSendManagerImpl implements EmailSendManager {

    @Value("xzq953761972@163.com")
    private String from; // 发送者

    @Autowired
    private JavaMailSender mailSender;

    @Override
    public void sendEmail(SimpleEmail simpleEmail) throws MessagingException {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message);

        /**
         * 添加发送者
         */
        helper.setFrom(from);
        System.out.println("发送者："+from);
        Set<String> toSet = simpleEmail.getToSet();
        System.out.println(toSet.toString());
        /**
         * 添加接收者
         */
        helper.setTo(toSet.toArray(new String[toSet.size()]));

        /**
         * 添加主题
         */
        helper.setSubject(simpleEmail.getSubject());
        /**
         * 添加正文
         */
        helper.setText(simpleEmail.getContent(), simpleEmail.isHtml());

        mailSender.send(message); // 发送
    }

}
