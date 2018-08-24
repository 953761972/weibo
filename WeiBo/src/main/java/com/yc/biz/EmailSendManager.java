package com.yc.biz;



import javax.mail.MessagingException;

import com.yc.bean.SimpleEmail;

public interface EmailSendManager {
    /**
     * 发送简单邮件
     * 
     * @param simpleEmail
     *            简单邮件详情
     * @throws MessagingException
     */
    void sendEmail(SimpleEmail simpleEmail) throws MessagingException;

}