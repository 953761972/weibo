<%@page import="com.yc.bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<%
String msg=(String)request.getAttribute("msg");
if(msg!=null){%>
	<script>
		alert("<%=msg%>");
	</script>
<% }%>

<c:if test="${mypage==null}">	
	<jsp:forward page="index.do">
		<jsp:param value="op" name="1"/>
	</jsp:forward>
</c:if>

<% Page<Topic> Mypage=(Page<Topic>)request.getAttribute("mypage");

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的微博 - lmlblog.com</title>
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
</head>
<body>
	<!-- 菜单 -->
	<%@include file="menuandinfo.jsp"%>

	</div>
	     <!-- 发布 -->
     			<div class="col-sm-6 col-xs-12 my_edit" style="margin-top: 0px;margin-bottom: 10px; width: 710px">
				<div class="row" id="edit_form" >
				    <span class="pull-left" style="margin:15px;">编写新鲜事</span>
					<span class="tips pull-right" style="margin:15px;"></span>
			        <form role="form" style="margin-top:0px;" action="post.do" method="post" id="contentform" enctype="multipart/form-data">
						  <div class="form-group">
							   <div class="col-sm-12">
						
							       	<div contentEditable="true" id="content" class="form-control " ></div>
							       	<input type="hidden" name="contenttext" id="contenttext"/>  
							    </div>
							    <div class="col-sm-12" style="margin-top: 12px;">
							    	<span class="emoji" >表情</span>

							    	<span class="pic" >图片	</span>
							    	<span>
							    		<input type="file" name="contentimg"  class="select_Img" style="display: none" onchange="xx(this)">
							    	    <img class="preview" src="">
							    	    
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
									<button type="button" id="send" class="btn btn-default pull-right disabled">发布</button>
							    </div>
						  </div>
					</form> 
		   		</div>
<!--  	            		  <div class="row item_msg" >
		   						<div class="col-sm-12 col-xs-12 message" >
		   			    		 <img src="img/icon.png" class="col-sm-2 col-xs-2" style="border-radius: 50%">
		   			    	 <div class="col-sm-10 col-xs-10">
		   			        <span style="font-weight: bold;">Jack.C</span>
		   			        <br>
		   			     	<small class="date" style="color:#999">1分钟前</small>
		   			        <div class="msg_content">happy day!
		   			         <img class="mypic" src="img/bg_1.jpg" >
		   			         </div>
		   			    
		   			     </div>
		   				 
		   			</div>
		   		   
		   			
		   		</div> -->
		   		
			</div>
     <!--  -->
     

	<!-- posts_list -->
	
	<c:forEach items="${mypage.list}" var="p">
	<div class="lmlblog-posts-list words"
		style="background-image: url(images/153.png);" data="4183">
		<input type="hidden" name="topicid" value="${p.topicid}"/>
		<!-- 动态内容部分，包括列表 -->
		<div class="lmlblog-post-user-info">
			<div class="lmlblog-post-user-info-avatar" user-data="1">
				<a href="#1" style="display: inline-block;"> <span
					class="lmlblog-vip-icon"></span><img src="images/tx2.jpg"
					class="avatar" /> <i class="lmlblog-verify lmlblog-verify-a"
					title="${logineduser.uname}"></i></a>
				<div class="lmlblog-user-info-card">
					<div class="info_card_loading">
						<img src="picture/chat-loading.gif">
						<p>资料加载中...</p>
					</div>
				</div>
			</div>
			<div class="lmlblog-post-user-info-name">
				<a href="#1"> <font style="color: #333; font-weight: 600">${logineduser.uname}</font>
				</a> <span class="lmlblog-mark lmlblog-lv" title="经验：3815">Lv.6</span><span
					class="lmlblog-mark lmlblog-vip">VIP 6</span>
			</div>
			<div class="lmlblog-post-user-info-time" title="${p.posttime}">
				${p.posttime}</div>
		</div>
		<!-- 作者信息 -->
		<div class="lmlblog-post-setting">
			<i class="fa fa-angle-down"></i>
			<div class="lmlblog-post-setting-box">
				<ul>
					<a href="#4183.html" title="查看全文">
						<li>查看全文</li>
					</a>
					<a href="#1" title="访问主页">
						<li>访问主页</li>
					</a>
				</ul>
			</div>
		</div>
		<div class="lmlblog-post-content ">
			<a class="post_list_link" href="#3.html">				 
				${p.content}
			</a>
		</div>
		<div class="lmlblog-post-images-list clear">
			<a href="${p.image==null?'':p.image}" data-fancybox="gallery"
				data-caption='<i class="fa fa-copyright"></i> lmlblog'> <img
				src="${p.image==null?'':p.image}" />
			</a>
		</div>
		<div class="lmlblog-post-bar">
			<li class="lmlblog-no-like"
				onclick="dianzan(this)"
				value="${p.topicid}"><i
				class="lmlblog-icon">&#xe608;</i> <span>${p.likecount==null?0:p.likecount}</span></li>
			<li onclick='list_comments_show(this);'><i class="lmlblog-icon">&#xe633;</i>
				<span>转发 </span></li>
			<li onclick='lmlblog_pop_login_style();'><i class="lmlblog-icon"></i>评论
				<span>${p.comments.size()==null?0:p.comments.size()}</span></li>
			<li><i class="lmlblog-icon">&#xe602;</i> <span>${p.comments.size()==null?0:p.comments.size()}</span></li>
		</div>
		<div class="lmlblog-post-like-list">
			<a href="#2044" id="had_like_12044"><img src="picture/18.jpg"
				class="avatar" /></a> <a href="#0894" id="had_like_10894"><img
				src="picture/2.gif" class="avatar" /></a> <a href="#1589"
				id="had_like_11589"><img src="picture/8.gif" class="avatar" /></a>
			<a href="#1" id="had_like_1"><img src="images/tx2.jpg"
				class="avatar" /><i class="lmlblog-verify lmlblog-verify-a"
				title="司空琪"></i></a>
		</div>
		<div class="lmlblog-post-footer-bar">
			<span title="${p.posttime}">${p.posttime}</span> <span>电脑端</span><i
				class="lmlblog-icon" onclick="lmlblog_post_type_open();">&#xe62c;</i>
		</div>
	</div>
</c:forEach>

	<!-- posts_list -->
	<div class="lmlblog-pager">
		<a class="lmlblog-pager-left" href="index.do?pageNum=<%=Mypage.getPageNum()-1<=0?1:Mypage.getPageNum()-1%>">上一页</a>
		<div class="lmlblog-pager-center">
			<select id="pageoption">
			<%for(int i=1;i<Mypage.getPages()+1;i++){ %>
			<% if(i!=Mypage.getPageNum()){%>
			<option  class="pageoption" value="<%=i%>">第<%=i%>页</option>
			<% }else{%>
			<option selected="selected" class="pageoption" value="<%=i%>">第<%=i%>页</option>
			<%}} %>	
			</select>
		</div>
		<a class="lmlblog-pager-right" href="index.do?pageNum=<%=Mypage.getPageNum()+1>Mypage.getPages()?Mypage.getPages():Mypage.getPageNum()+1%>">下一页</a>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- 底部 -->
	<div style="clear: both;width: 100% ;"></div>
	<div class="footer">
		<div class="footer_b_foot">
			<div class="footer_b_top"></div>
			<div class="footer_b_bottom">
				</div>
		</div>
	</div>
	<!-- 返回顶部 -->

</body>
	<a href="javascript:returnTop();" class="cd-top"></a>
	<script type="text/javascript">
var sdelay=0;
function returnTop() {
 window.scrollBy(0,-100);//Only for y vertical-axis
 if(document.body.scrollTop>0) { 
  sdelay= setTimeout('returnTop()',50);
 }
}

$('#pageoption').change(function(){
	var o=$('#pageoption option:selected');
	var ss=$('#pageoption').val();
	//alert(ss);
	//alert(o.val());
	window.location.href="index.do?pageNum="+o.val();
})
</script>
<script>
jQuery(document).ready(function($){
$.fn.smartFloat = function() {
var position = function(element) {
var top = element.position().top, pos = element.css("position");
$(window).scroll(function() {
var scrolls = $(this).scrollTop();
if (scrolls > top) {
if (window.XMLHttpRequest) {
element.css({
position: "fixed",
top: 0
});
} else {
element.css({
top: scrolls
});
}
}else {
element.css({
position: "absolute",
top: top
});
}
});
};
return $(this).each(function() {
position($(this));
});
};
$(".lmlblog-member-left-bg-xg").smartFloat();
});

window.onload=function(){
	$("#myindex").addClass("on");
	
	//o.attr('selected','selected');
}
</script>
    <script type="text/javascript">
    	$(function(){

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
    				

    			});

    		// 	function confirm(){
    			
    		// 		var r= new FileReader();
						// f=$(".select_Img").files[0];
						// r.readAsDataURL(f);
						// r.onload=function(e) {
						// 	$(".preview").src=this.result;

						// };
    		// 	}
 			
    		//点击按钮发送内容
    		 $("#send").click(function(){

    		 	// var myDate = new Date();

		      //   var min = myDate.getMinutes();

		      //   var time = min-(min-1);

		      //   //alert(time);

    		 	var content=$("#content").html();

    		 	//判断选择的是否是图片格式		 
    		 	var imgPath = $(".select_Img").text();
    		 	//alert(imgPath);
    		 	// imgPath = $(".select_Img").attr('src');
    		 	//alert(imgPath);
    		 	var start  = imgPath.lastIndexOf(".");
    		 	var postfix = imgPath.substring(start,imgPath.length).toUpperCase();
    		 	

    		 	if(imgPath!=""){

	    		 	if(postfix!=".PNG"&&postfix!=".JPG"&&postfix!=".GIF"&&postfix!=".JPEG"){
	    		 			alert("图片格式需为png,gif,jpeg,jpg格式");
	    		 	}else{
	    		 		$(".item_msg").append("<div class='col-sm-12 col-xs-12 message' > <img src='img/icon.png' class='col-sm-2 col-xs-2' style='border-radius: 50%'><div class='col-sm-10 col-xs-10'><span style='font-weight: bold;''>Jack.C</span> <br><small class='date' style='color:#999'>刚刚</small><div class='msg_content'>"+content+"<img class='mypic' onerror='this.src='img/bg_1.jpg' src='file:///"+imgPath+"' ></div></div></div>");
    		 	    }
    		 	}else{
                     $(".item_msg").append("<div class='col-sm-12 col-xs-12 message' > <img src='img/icon.png' class='col-sm-2 col-xs-2' style='border-radius: 50%'><div class='col-sm-10 col-xs-10'><span style='font-weight: bold;''>Jack.C</span> <br><small class='date' style='color:#999'>刚刚</small><div class='msg_content'>"+content+"</div></div></div>");
    		 	}
    		 	var contenttext=$("#content").html();
    		 	$('#contenttext').val(contenttext);
    		 	$('#contentform').submit();	 	    		
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
 						//alert(obj);
    				    var oFReader = new FileReader();
    				    var file =obj.files[0];
    				    oFReader.readAsDataURL(file);
    				    oFReader.onloadend = function(oFRevent){
    				        var src = oFRevent.target.result;
    				        $('.preview').attr('src',src);
    				       // alert("ok");
    				        //alert(src);
    				    } 	
    				}
    </script>
</html>