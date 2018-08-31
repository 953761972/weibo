<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String msg=(String)request.getAttribute("msg");
	if(msg!=null){%>
		<script>
	
		alert('<%=msg%>');
		
		</script>
	<%}%>
<head>
		<meta charset="utf-8">
		<title>管理员登录界面</title>
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
							管理员登录
						</div>
						<form action="guanli.do" method="post">
							
							<div class="form_text_ipt">
								<input name="gemail" type="text" placeholder="邮箱">
							</div>
							<div class="ececk_warning"><span>邮箱不能为空</span></div>
							<div class="form_text_ipt">
								<input name="gpass" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>密码不能为空</span></div>
							<div class="form_check_ipt">
								<div class="right check_right">
									<a href="wangji1.jsp">忘记密码</a>
								</div>
							</div>
							<div class="form_btn">
								<button type="button" onclick="submitlogin1()">登录</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<script type="text/javascript">
		function submitcode(a){
			var ecode=$('#ecode').val();
			var num=a.value;
			if(num==ecode){
				$('form').submit();
				return true;
			}else
			alert("验证码不正确！");
		}


		function submitlogin1(){
			var gname=$('input[name="gemail"]').val();
			var gpass=$('input[name="gpass"]').val();
			alert(gname+gpass);
			if(gname==""){
				return false;
			}
			if(gpass==""){
				return false;
			}
			
			if(gname!=""&&gpass!=""){
				$('form').submit();
			}
			
		}
		</script>
		<div style="text-align:center;">
</div>
	</body>
</html>