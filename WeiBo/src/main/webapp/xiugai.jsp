<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<form action="xiugai.do" method="post">
							<input type="hidden" name="uemail" value="${param.uemail}"/>
							<div class="form_text_ipt">
								<input name="newPass" type="password" placeholder="新密码">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>

							<div class="form_text_ipt">
								<input name="rePass" type="password" placeholder="确认密码">
							</div>
							<div class="ececk_warning"><span>请确认修改密码</span></div>
							<div class="form_btn">
								<button type="button" onclick="submitpass()">

								修改密码</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript">
		function submitpass(){
			$('form').submit();
		}
		</script>
		<div style="text-align:center;">
</div>
	</body>
</html>
