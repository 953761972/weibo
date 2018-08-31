<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<head>
		<meta charset="utf-8">
		<title>找回密码</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							忘记密码
						</div>
						<form  method="post">
							
							<div class="form_text_ipt">
								<input  id="gemail" name="gemail" type="text" placeholder="手机号/邮箱">
							</div>
							<div class="ececk_warning"><span>手机号/邮箱不能为空</span></div>
					        <span>
					        <input  type="button" value="发送验证码" id="sendemail"/>
					        
					        </span>
							<div class="form_text_ipt">
								<input name="password" type="text" placeholder="验证码">
								<input type="hidden" id="ebt"/>
							</div>
							<div class="ececk_warning"><span>验证码不能为空</span></div>
							<div class="form_btn">
								<button  type="button" onclick="chazhao()">修改密码</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		function chazhao(){
			var num=$('#ebt').val();
			var p=$('input[name=password]').val();
			
			//alert('p'+p);
		//	alert('num'+num);
			if($('input[name=password]').val()!=num){
				alert('验证码不正确');
				return false;
			}
			//$('form').submit();
			//action="xiugai.jsp?uemail="
					var gemail=$('#gemail').val();
			window.location.href="xiugai1.jsp?gemail="+gemail;			
		}
		
	$('#sendemail').on('click',function(){
		$('#gemail').attr('disabled','disabled');
		var num=Math.floor(Math.random()*9000+1000);
		var gemail=$('#gemail').val();
		//alert(num);
		var data={ecode:num,gemail:gemail};
		//alert(uemail);
		$.post("wangji1.do",data,function(data){	
			$('#ebt').val(num);
			var ddd=data;
			//alert(ddd);
			var flag=data.replace("IsAjax","");
			//alert(flag);
			if(flag==1){				
				alert('发送成功！');
			}
			if(flag==-1){
				$('#gemail').removeAttr('disabled');
				alert('该邮箱未注册！');
			}			
		});
	});
		</script>

		<div style="text-align:center;">
</div>
	</body>
</html>
