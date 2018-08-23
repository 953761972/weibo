<%@page import="com.yc.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	User user=(User)request.getAttribute("user");

	String email=user.getUemail().substring(0,3)+"****"+user.getUemail().substring(7);
%>	
<head>
		<meta charset="utf-8">
		<title>登录界面</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							验证邮箱
						</div>
						<form action="#" method="post">
							
							<div class="form_text_ipt" style="border:none;"><span style=" margin-left:50px"><%=email%></span>
                            <button class="bt" type="button" onclick="sendemail()">发送验证码</button>
                            </div>
							
							<div class="form_text_ipt">
								<input name="password" type="password" placeholder="请输入您收到的验证码">
							</div>
							<div class="ececk_warning"><span>验证码不能为空</span></div>
							<br><br>	
							<div class="form_btn">
								<button type="button" onclick="submitcode()">提交</button>
							</div>
							<br><br>
						</form>

					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<div style="text-align:center;">
</div>
	</body>
</html>
