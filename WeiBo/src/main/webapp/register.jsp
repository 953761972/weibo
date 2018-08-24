<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
		<meta charset="utf-8">
		<title>注册</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
	</head>
	<%if(request.getAttribute("msg")!=null){%>
		<script>
			alert("<%=request.getAttribute("msg")%>");
		</script>
<% 	} %>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				
				<div class="logo"></div>
				
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">注册</div>
						<form action="reg.do" method="post">
							<div class="form_text_ipt">
								<input name="uname" type="text" placeholder="用户名" id="uname">
							</div>
							<div class="ececk_warning"><span>用户名由英文字母和数字组成的4-16位字符，以字母开头</span></div>
							<div class="form_text_ipt">
								<input name="uemail" type="text" id="uemail" placeholder="邮箱">
							</div>
							<div class="ececk_warning"><span>请输入正确的邮箱</span></div>
							<div class="form_text_ipt">
								<input name="upass" id="upass" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>密码由英文字母和数字组成的4-10位字符</span></div>
						
							<div class="form_text_ipt" style="width:140px;margin:20px auto 0 30px;display: inline-block" >
							<!--style="width:140px;margin:20px auto 0 30px"  style="width: 130px"-->
								<input id="code" style="width:120px" name="code" type="text" placeholder="验证码">
							</div>
							<img id="img" style="margin:10px auto auto 10px;" alt="无图片" src="vc.do" height="40px" onclick="flush(this)">
							<div class="ececk_warning"><span>请输入正确的验证码</span></div>
							
<!-- 							<div style="background-color:pink;" class="form_text_ipt"><img  alt="无图片" src="vc.do" height="30px" onclick="flush(this)"></div>
 -->
										
							<div class="form_btn">
								<button type="button" onclick="mysubmit()">注册</button>
							</div>
							<div class="form_reg_btn">
								<span>已有账号？</span><a href="login.html">马上登录</a>
							</div>
						</form>
						<div class="other_login">
							<div class="left other_left">
								<span>其他登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#"><i class="fa fa-qq fa-2x"></i></a>
								<a href="#"><i class="fa fa-weixin fa-2x"></i></a>
								<a href="#"><i class="fa fa-weibo fa-2x"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript">
		function flush(a){		
			a.src="vc.do?"+new Date();
		}
		</script>
		<div style="text-align:center;">
</div>
	</body>
</html>
