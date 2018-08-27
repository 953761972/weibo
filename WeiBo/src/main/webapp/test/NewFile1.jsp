<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" 
integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="../css/style1.css">
<body>
     <!--  -->
     <select>
     <option>1</option>
     <option>2</option>
     </select>
     			<div class="col-sm-6 col-xs-12 my_edit" >
				<div class="row" id="edit_form" >
				    <span class="pull-left" style="margin:15px;">编写新鲜事</span>
					<span class="tips pull-right" style="margin:15px;"></span>
			        <form role="form" style="margin-top: 50px;">
						  <div class="form-group">
							   <div class="col-sm-12">
						
							       	<div contentEditable="true" id="content" class="form-control " ></div>  
							    </div>
							    <div class="col-sm-12" style="margin-top: 12px;">
							    	<span class="emoji" >表情</span>

							    	<span class="pic" >图片	</span>
							    	<span>
							    		<input type="file" name=""  class="select_Img" onchange="xx(this)">
							    	    <img class="preview" id="preview" src="\images\04.jpg" >
							    	</span>
							    	

							    	<div class="myEmoji" >
							    		<ul id="myTab" class="nav nav-tabs">
										    <li class="active">
										        <a href="#set" data-toggle="tab">
										           预设
										        </a>
										    </li>
										    <li><a href="#hot" data-toggle="tab">热门</a></li>
										    
										</ul>
										<div id="myTabContent" class="tab-content">
										    <div class="tab-pane fade in active" id="set">
										    	<div class="emoji_1"></div>

										    </div>
										    <div class="tab-pane fade" id="hot">
										      <div class="emoji_2"></div>
										    </div>
										   
										</div>
							    	</div>
							    	<!-- <span> <input type="file" id="selectImg" value=""></input> </span> -->
									<button type="button" id="send" class="btn btn-default pull-right disabled" >发布</button>
									<p class="bt">预览</p>
							    </div>
						  </div>
					</form> 
		   		</div>
	            
			</div>
     <!--  -->
         <script type="text/javascript">
    	$(function(){
			
    		$(".select_Img").onchange=function(){
    			alert('选择了图片');
    		}
    		
    		 $("#content").keyup(function(){

    		 	//判断输入的字符串长度
    		 	var content_len = $("#content").text().replace(/\s/g,"").length;

    		 	$(".tips").text("已经输入"+content_len+"个字");
                
           
    		 	if(content_len==0){
    		 		// alert(content);
    		 		$(".tips").text("");
    		    	$("#send").addClass("disabled");
    		 		return false;
    		 	}else{
    		 		$("#send").removeClass("disabled");
    		 	}
    		 });

    		 
    			$(".pic").click(function(){
    				
    				$(".select_Img").click();  	
    				

    			})

    			
    		 $(".bt").click(function (){
 				
 		 		var r= new FileReader();
						var f=$(".select_Img").val();
						
						$('.preview').attr('src', f);

						 alert(a);
						 r.readAsDataURL(f);
						 r.onload=function(e) {

							alert(f);
						 };
 		 	})
    			
 		$(".select_Img").change(

 				) 	
    		//点击按钮发送内容
    		 $("#send").click(function(){

    		 	// var myDate = new Date();

		      //   var min = myDate.getMinutes();

		      //   var time = min-(min-1);

		      //   //alert(time);
	
    		 	var content=$("#content").html();

    		 	//判断选择的是否是图片格式		 
    		 	var imgPath = $(".select_Img").val();
    		 	var start  = imgPath.lastIndexOf(".");
    		 	var postfix = imgPath.substring(start,imgPath.length).toUpperCase();
    		 	
    		 	alert(imgPath);
    		 	if(imgPath!=""){

	    		 	if(postfix!=".PNG"&&postfix!=".JPG"&&postfix!=".GIF"&&postfix!=".JPEG"){
	    		 			alert("图片格式需为png,gif,jpeg,jpg格式");
	    		 	}else{
	    		 		$(".item_msg").append("<div class='col-sm-12 col-xs-12 message' > <img src='img/icon.png' class='col-sm-2 col-xs-2' style='border-radius: 50%'><div class='col-sm-10 col-xs-10'><span style='font-weight: bold;''>Jack.C</span> <br><small class='date' style='color:#999'>刚刚</small><div class='msg_content'>"+content+"<img class='mypic' onerror='this.src='img/bg_1.jpg' src='file:///"+imgPath+"' ></div></div></div>");
    		 	    }
    		 	}else{
                     $(".item_msg").append("<div class='col-sm-12 col-xs-12 message' > <img src='img/icon.png' class='col-sm-2 col-xs-2' style='border-radius: 50%'><div class='col-sm-10 col-xs-10'><span style='font-weight: bold;''>Jack.C</span> <br><small class='date' style='color:#999'>刚刚</small><div class='msg_content'>"+content+"</div></div></div>");
    		 	}
    		 		 	    		
    		 });

    		  //添加表情包1
 			  for (var i = 1; i < 60; i++) {

				    $(".emoji_1").append("<img src='img/f"+i+".png' style='width:35px;height:35px' >");
				}
				//添加表情包2
				for (var i = 1; i < 61; i++) {

				    $(".emoji_2").append("<img src='img/h"+i+".png' style='width:35px;height:35px' >");
				}
    		
    	    
    		 $(".emoji").click(function(){

    		 	$(".myEmoji").show();

				//点击空白处隐藏弹出层
                $(document).click(function (e) {

                    if (!$("#edit_form").is(e.target) && $("#edit_form").has(e.target).length === 0) {

                        $(".myEmoji").hide();
                    }
                });


    		 });

    		 //将表情添加到输入框
    		   $(".myEmoji img").each(function(){
               	    $(this).click(function(){
               	    	var url = $(this)[0].src;
  
				        $('#content').append("<img src='"+url+"' style='width:25px;height:25px' >");

				        $("#send").removeClass("disabled");
               	    })
               })
				
				//放大或缩小预览图片
				$(".mypic").click(function(){
					var oWidth=$(this).width(); //取得图片的实际宽度  
   					var oHeight=$(this).height(); //取得图片的实际高度  
				  
					if($(this).height()!=200){
						$(this).height(200); 
					}else{
						$(this).height(oHeight + 200/oWidth*oHeight); 
						
					}
						        
				})
				
    	})
    	
    	 				function xx(obj){
    				//解决C:\fakepath问题
    					//var obj=$(".select_Img");
 				alert(obj);
    				    var oFReader = new FileReader();
    				    var file =obj.files[0];
    				    oFReader.readAsDataURL(file);
    				    oFReader.onloadend = function(oFRevent){
    				        var src = oFRevent.target.result;
    				        $('.preview').attr('src',src);
    				        alert("ok");
    				        alert(src);
    				    } 	
    				}
    </script>
</body>
</html>