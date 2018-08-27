$(function(){
	
	//登录输入框效果
	$('.form_text_ipt input').focus(function(){
		$(this).parent().css({
			'box-shadow':'0 0 3px #bbb',
		});
	});
	$('.form_text_ipt input').blur(function(){
		$(this).parent().css({
			'box-shadow':'none',
		});
		//$(this).parent().next().hide();
	});
	
	//表单验证
	$('.form_text_ipt input').bind('input propertychange',function(){
		if($(this).val()==""){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$(this).parent().nextAll('.ececk_warning').first().show();
		}else{

					$(this).css({
						'color':'#ccc',
					});
					$(this).parent().css({
						'border':'solid 1px #ccc',
					});
					$(this).parent().nextAll('.ececk_warning').first().hide();
				

		}
	});
	//失去焦点
	$('.form_text_ipt input').bind('input blur',function(){
		if($(this).val()==""){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$(this).parent().nextAll('.ececk_warning').first().show();
		}else{
					$(this).css({
						'color':'#ccc',
					});
					$(this).parent().css({
						'border':'solid 1px #ccc',
					});
					$(this).parent().nextAll('.ececk_warning').first().hide();				
		}
	});
	//获得焦点
	$('.form_text_ipt input').bind('input focus',function(){

			$(this).css({
				'color':'#ccc',
			});
			$(this).parent().css({
				'border':'solid 1px #ccc',
			});
			$(this).parent().nextAll('.ececk_warning').first().hide();
		
	});
});


function sendemail(a){
	var num=Math.floor(Math.random()*9000+1000);
	var data={ecode:num};	
	$.post("bangding.do",data,function(){	
		a.innerHTML="已发送";
		a.disabled='disabled';
		a.style.color='gray';
		$('#ebt').val(num);
	});
	
}

function submitcode(a){
	var ecode=$('#ecode').val();
	var num=a.value;
	if(num==ecode){
		$('form').submit();
		return true;
	}else
	alert("验证码不正确！");
}


function submitlogin(){
	var uname=$('input[name="uname"]').val();
	var upass=$('input[name="upass"]').val();
	if(uname==""){
		return false;
	}
	if(upass==""){
		return false;
	}
	
	if(uname!=""&&upass!=""){
		$('form').submit();
	}
	
}

function mysubmit(){
	 var regemail=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;  
	 var regpass=/^[a-zA-Z0-9]{4,10}$/;
	 var regname=/^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
	 
		if($('#uname').val()==''||regname.test($('#uname').val())==false){			
			$('#uname').css({
				'color':'red',
			});
			$('#uname').parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$('#uname').parent().nextAll('.ececk_warning').first().show();
			return false;
		}
		if($("#uemail").val()==''||regemail.test($("#uemail").val())==false){

			$("#uemail").css({
				'color':'red',
			});
			$("#uemail").parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$("#uemail").parent().nextAll('.ececk_warning').first().show();
			return false;
		}
		if($("#upass").val()==''||regpass.test($("#upass").val())==false){

			$("#upass").css({
				'color':'red',
			});
			$("#upass").parent().css({
				'border':'solid 1px red',
			});
			//$(this).parent().next().find('span').html('helow');
			$("#upass").parent().nextAll('.ececk_warning').first().show();
			return false;
		}
		
	if($('#code').val()==''){
		$("#code").css({
			'color':'red',
		});
		$("#code").parent().css({
			'border':'solid 1px red',
		});
		//$(this).parent().next().find('span').html('helow');
		$("#code").parent().nextAll('.ececk_warning').first().show();
		return false;
	}
	$('form').submit();
}