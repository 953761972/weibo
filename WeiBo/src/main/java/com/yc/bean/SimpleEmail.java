package com.yc.bean;

import java.util.Set;

public class SimpleEmail {
    private Set<String> toSet; // 收件人
    private String subject; // 主题
    private String content; // 正文
    private boolean isHtml; // 正文是否是HTML


    public Set<String> getToSet() {
        return toSet;
    }

    public void setToSet(Set<String> toSet) {
        this.toSet = toSet;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isHtml() {
        return isHtml;
    }

    public void setHtml(boolean isHtml) {
        this.isHtml = isHtml;
    }



}