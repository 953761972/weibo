<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<% if(request.getAttribute("msg")!=null){%>
		<script>
		alert("<%=request.getAttribute("msg")%>");
		</script>
	<%}%>
<head>
		<meta charset="utf-8">
		<title>修改密码</title>
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
							修改密码
						</div>
						<form action="#" method="post">
							
							<div class="form_text_ipt">
								<input name="username" type="text" placeholder="新密码">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>

							<div class="form_text_ipt">
								<input name="password" type="password" placeholder="确认密码">
							</div>
							<div class="ececk_warning"><span>请确认修改密码</span></div>
							<div class="form_btn">
								<button type="button" onclick="javascript:window.location.href='login.jsp'">

								修改密码</button>
							</div>

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
