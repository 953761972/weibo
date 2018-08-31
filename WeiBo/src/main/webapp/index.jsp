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
		<jsp:param value="op" name="1" />
	</jsp:forward>
</c:if>

<% Page<Topic> Mypage=(Page<Topic>)request.getAttribute("mypage");

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的微博 - lmlblog.com</title>
<script type="text/javascript" src='js/jquery.flexText.js'></script>
<link rel='stylesheet' id='all-css' href='css/style2.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='all-css' href='css/comment1.css'
	type='text/css' media='all' />

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

	<!-- 菜单 -->
	<%@include file="menuandinfo.jsp"%>

	</div>
	<!-- 发布 -->
	<div class="col-sm-6 col-xs-12 my_edit"
		style="margin-top: 0px; margin-bottom: 10px; width: 710px">
		<div class="row" id="edit_form">
			<span class="pull-left" style="margin: 15px;">编写新鲜事</span> <span
				class="tips pull-right" style="margin: 15px;"></span>
			<form role="form" style="margin-top: 0px;" action="post.do"
				method="post" id="contentform" enctype="multipart/form-data">
				<div class="form-group">
					<div class="col-sm-12">

						<div contentEditable="true" id="content" class="form-control "></div>
						<input type="hidden" name="contenttext" id="contenttext" />
					</div>
					<div class="col-sm-12" style="margin-top: 12px;">
						<span class="emoji">表情</span> <input type="hidden" name="emoji" />
						<span class="pic">图片 </span> <span> <input type="file"
							name="contentimg" class="select_Img" style="display: none"
							onchange="xx(this)"> <img class="preview" src="">

						</span>


						<div class="myEmoji">
							<ul id="myTab" class="nav nav-tabs">
								<li class="active"><a href="#set" data-toggle="tab">
										预设 </a></li>
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
						<button type="button" id="send"
							class="btn btn-default pull-right disabled">发布</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--  -->


	<!-- posts_list -->

	<c:forEach items="${mypage.list}" var="p">
		<div class="lmlblog-posts-list words"
			style="background-image: url(images/153.png); margin-bottom: 0px; margin-top: 30px;"
			data="4183">
			<input type="hidden" name="topicid" value="${p.topicid}" />
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
							<h1>xxxx</h1>
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
				<c:if test="${p.transpondfrom!=null}">
				转发微博：<a style="color: orange;" href="alltopics.do?uid=${p.transfromuid}">@${p.transfromuname}</a><br/><br/>
				</c:if>
				<a class="post_list_link" href="#3.html"> ${p.content} </a>
			</div>
			<c:if test="${p.image!=null}">
				<div class="lmlblog-post-images-list clear">
					<%-- 	<c:forEach items="${p.image}" var="img"> --%>

					<a href="${img}" data-fancybox="gallery"
						data-caption='<i class="fa fa-copyright"></i> lmlblog'> <img
						src="${img}" />
					</a>

					<%-- </c:forEach> --%>

				</div>
			</c:if>
			<div class="lmlblog-post-bar">
				<li class="lmlblog-no-like" onclick="dianzan(this)"
					value="${p.topicid}"><i class="lmlblog-icon">&#xe608;</i> <span>${p.likecount==null?0:p.likecount}</span></li>
				<li onclick='list_comments_show(this,${p.topicid});'><i class="lmlblog-icon">&#xe633;</i>
					<span>转发 </span></li>
				<li class="pinglun"><i class="lmlblog-icon">评论</i> <span>${p.commentcount}</span></li>
				<li><i class="lmlblog-icon">&#xe602;</i> <span>${p.commentcount}</span></li>
			</div>
<!-- 			<div class="lmlblog-post-like-list">
				<a href="#2044" id="had_like_12044"><img src="picture/18.jpg"
					class="avatar" /></a> <a href="#0894" id="had_like_10894"><img
					src="picture/2.gif" class="avatar" /></a> <a href="#1589"
					id="had_like_11589"><img src="picture/8.gif" class="avatar" /></a>
				<a href="#1" id="had_like_1"><img src="images/tx2.jpg"
					class="avatar" /><i class="lmlblog-verify lmlblog-verify-a"
					title="司空琪"></i></a>
			</div> -->
			<div class="lmlblog-post-footer-bar">
				<span title="${p.posttime}">${p.posttime}</span> <span>电脑端</span><i
					class="lmlblog-icon" onclick="lmlblog_post_type_open();">&#xe62c;</i>
			</div>
		</div>
		<div class='commentwindow'></div>
		<!-- 		<a href="#collapseThree" data-toggle="collapse" data-parent="#accordion">评论</a>
 -->
		<!-- 	</div><div id="collapseThree" class="panel-collapse collapse"><div class="panel-body">xxxx</div></div> -->
	</c:forEach>

<!-- 	<div class="comment-show-con clearfix">
		<div class="comment-show-con-img pull-left">
			<img src="default.png" alt="">
		</div>
		<div class="comment-show-con-list pull-left clearfix">
			<div class="pl-text clearfix">
				<a href="#" class="comment-size-name">xzq : </a> <span
					class="my-pl-con">&nbsp;ddddddd</span>
			</div>
			<div class="date-dz">
				<span class="date-dz-left pull-left comment-time">2017-5-2
					11:11:39</span>
				<div class="date-dz-right pull-right comment-pl-block">
					<a href="javascript:;" class="removeBlock">删除</a> <input
						name="commentid" value="7" type="hidden"> <a
						href="javascript:;"
						class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span
						class="pull-left date-dz-line">|</span> <a href="javascript:;"
						class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞
						(<i class="z-num">666</i>)</a>
				</div>
			</div>
			<div class="hf-list-con"></div>
		</div>
	</div> -->


	<!-- posts_list -->
	<div class="lmlblog-pager">
		<a class="lmlblog-pager-left"
			href="index.do?pageNum=<%=Mypage.getPageNum()-1<=0?1:Mypage.getPageNum()-1%>">上一页</a>
		<div class="lmlblog-pager-center">
			<select id="pageoption">
				<%for(int i=1;i<Mypage.getPages()+1;i++){ %>
				<% if(i!=Mypage.getPageNum()){%>
				<option class="pageoption" value="<%=i%>">第<%=i%>页
				</option>
				<% }else{%>
				<option selected="selected" class="pageoption" value="<%=i%>">第<%=i%>页
				</option>
				<%}} %>
			</select>
		</div>
		<a class="lmlblog-pager-right"
			href="index.do?pageNum=<%=Mypage.getPageNum()+1>Mypage.getPages()?Mypage.getPages():Mypage.getPageNum()+1%>">下一页</a>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!-- 底部 -->
	<div style="clear: both; width: 100%;"></div>
	<div class="footer">
		<div class="footer_b_foot">
			<div class="footer_b_top"></div>
			<div class="footer_b_bottom"></div>
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

    

</script>


<script type="text/javascript">
	//转发
	function list_comments_show(a,b){
	alert(b);	
	var data={topicid:b};
	$.post('zhuanfa.do',data,function(data){
		//alert(data);
		var d=data.replace('IsAjax','');
		if(d==1){
			alert('转发成功');
			window.location.href="index.do";
		}else{
			alert('转发失败');
		}
		
	});
	
	}
	
    //回复的方法
        function sendreply(a,b){
    //	alert('fangfa');
    	var reply=$('.thisreply ').parents('.date-dz-right').parents('.date-dz').html();
        //获取回复人的名字
       // alert($(this).html());
     //   alert(a);
   //  alert(reply);
     var x=b;
   //  alert(x);
   //  alert(reply);
       // alert($(this).parents().html());
       // var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@;
       var fhName="wo";
        var fhN = '回复@'+fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left" id="myreplywindown"> <form id="replywindown" action="reply.do"><textarea name="replycontent" class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <input type="hidden" name="thiscommentid" value="'+x+'"/></form><a href="javascript:;" class="hf-pl" onclick="sendmyreply('+x+')">评论</a></div>';
        //显示回复

      	
    	 $('#myreplywindown').remove();
    //	 $('input[value='+x+']').parents('.date-dz-right').parents('.date-dz').empty();
        $('input[value='+x+']').parents('.date-dz-right').parents('.date-dz').append(fhHtml);
        
        
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    }
    
    function sendmyreply(a){
    	//alert('回复！！');
    	$('#replywindown').submit();
    }
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
    //apend元素的方法
    function  conkeyup (){
    	//判断输入的字符串长度
    	
	 	var content_len = $('.commentwindow').find("#content").text().replace(/\s/g,"").length;
	 	//alert(content_len);
	 	$('.commentwindow').find(".tips").text("已经输入"+content_len+"个字");
	 	
	 	 if(content_len > 139){
    		 	var contenttext=$('.commentwindow').find("#content").html();
    		 	$('.commentwindow').find('#content').val(contenttext.substring(0,140));
    		 	$('.commentwindow').find('#content').html(contenttext.substring(0,140));
    		 	$('.commentwindow').find('#contenttext').val(contenttext.substring(0,140));
	          //$(t).val($(t).val().substring(0,140));
	        }
   
	 	if(content_len==0){
	 		// alert(content);
	 		$('.commentwindow').find(".tips").text("");
	    	$('.commentwindow').find("#send").addClass("disabled");
	 		return false;
	 	}else{
	 		$('.commentwindow').find("#send").removeClass("disabled");
	 	}
    }
    
    //

    function picclick(){
    	alert('请选择图片');
    	$('.commentwindow .select_Img').click(); 
    }
    

    function sendcomment(){
    	//topicid
    	//var id=$(this)prients().prients().prients().find('topic').val();
	 	var content=$('.commentwindow').find("#content").html();
	 	$('.commentwindow').find('input[name=thistopicid]').attr('value')
		var topicid=$('.commentwindow').find('input[name=thistopicid]').val();
	 //	alert(topicid);
		//判断选择的是否是图片格式		 
	 	var imgPath = $(".commentwindow .select_Img").text();

	 	var start  = imgPath.lastIndexOf(".");
	 	var postfix = imgPath.substring(start,imgPath.length).toUpperCase();
	 	

	 	if(imgPath!=""){

		 	if(postfix!=".PNG"&&postfix!=".JPG"&&postfix!=".GIF"&&postfix!=".JPEG"){
		 			alert("图片格式需为png,gif,jpeg,jpg格式");
		 	}else{
		 		$(".commentwindow  .item_msg").append("<div class='col-sm-12 col-xs-12 message' > <img src='img/icon.png' class='col-sm-2 col-xs-2' style='border-radius: 50%'><div class='col-sm-10 col-xs-10'><span style='font-weight: bold;''>Jack.C</span> <br><small class='date' style='color:#999'>刚刚</small><div class='msg_content'>"+content+"<img class='mypic' onerror='this.src='img/bg_1.jpg' src='file:///"+imgPath+"' ></div></div></div>");
	 	    }
	 	}else{
             $(".commentwindow  .item_msg").append("<div class='col-sm-12 col-xs-12 message' > <img src='img/icon.png' class='col-sm-2 col-xs-2' style='border-radius: 50%'><div class='col-sm-10 col-xs-10'><span style='font-weight: bold;''>Jack.C</span> <br><small class='date' style='color:#999'>刚刚</small><div class='msg_content'>"+content+"</div></div></div>");
	 	}
	 	var contenttext=$(".commentwindow  #content").html();
	 	$('.commentwindow  #contenttext').val(contenttext);
	 	$('.commentwindow #contentform').submit();	 	    		
    }
    
    
	 function mycommentEmoji(a){
		var ii=$('input[name=myemoji]').attr('value');
		if(ii==0){
			
			$('input[name=myemoji]').attr('value',1);
			  //添加表情包1
			  for (var i = 1; i < 60; i++) {

				    $(".commentwindow  .emoji_1").append("<img src='img/f"+i+".png' style='width:35px;height:35px' >");
				}
				//添加表情包2
				for (var i = 1; i < 61; i++) {

				    $(".commentwindow  .emoji_2").append("<img src='img/h"+i+".png' style='width:35px;height:35px' >");
				}
				
		}

		 
		
		

		 	$(".commentwindow .myEmoji").show();

			//点击空白处隐藏弹出层
         $(document).click(function (e) {

             if (!$(".commentwindow #edit_form").is(e.target) && $(".commentwindow #edit_form").has(e.target).length === 0) {

                 $(".commentwindow .myEmoji").hide();
             }
         });


		 //将表情添加到输入框
		   $(".commentwindow  .myEmoji img").each(function(){
         	    $(this).click(function(){
         	    	var url = $(this)[0].src;

			        $('.commentwindow  #content').append("<img src='"+url+"' style='width:25px;height:25px' >");

			        $(".commentwindow  #send").removeClass("disabled");
         	    })
         })	
			
			
			
		 }
	 
	 
		function xxx(obj){
			//解决C:\fakepath问题
				//var obj=$(".select_Img");
					//alert(obj);
			    var oFReader = new FileReader();
			    var file =obj.files[0];
			    oFReader.readAsDataURL(file);
			    oFReader.onloadend = function(oFRevent){
			        var src = oFRevent.target.result;
			        $('.commentwindow .preview').attr('src',src);
			       // alert("ok");
			        //alert(src);
			    } 	
			}
    
    /*
    */
    	$(function(){

            $('.lmlblog-post-bar').on('click','.pinglun',function(){

     		$('.commentwindow').each(function(){
    			//alert('empty'+$(this).val());
    			$('.commentwindow').empty();
    		});
             
             
            	if($(this).val()=='1'){

            		$(this).parents('.lmlblog-post-bar').parents('.lmlblog-posts-list').next('.commentwindow').empty();
            		$(this).attr('value','-1');
            		//alert('remove'+$(this).val());
            		return ;
            	}

            	if($(this).val()=='-1'||$(this).val()=='0'){
            		var topicid=$(this).parents('.lmlblog-post-bar').parents('.lmlblog-posts-list').find('input').attr('value');
					var data={topicid:topicid};
				//	alert(topicid);
					var ss="";
            		$.post("findcomment.do",data,function(data){			
            			//var obj=$.toJSON(data);
            		//	alert('返回成功');
            		//	alert(data);
            		//	alert('data'+data.list);
            			ss=JSON.parse(data);
            	//		alert(ss.size);
					//	alert('ss'+ss.list);
            	//		alert(ss.list[0].commentid);
					//	alert(ss.list.commentid);
            		//topic=$(this).parents('lmlblog-posts-list').children().find('input[name=topicid]').val();

         	       
         	     //  var dataobj=eval('('+data+')');
         	   //    alert('ok');
         	});
     				
                    var $fhHtml =$("<div class='col-sm-6 col-xs-12 my_edit' style='margin-top: 0px;margin-bottom: 10px; width: 710px'><div class='row' id='edit_form' >  <span class='pull-left' style='margin:15px;''>编写回复:</span><span class='tips pull-right' style='margin:15px;'></span>  <form role='form' style='margin-top:0px;' action='comment.do' method='post' id='contentform' enctype='multipart/form-data'>	  <div class='form-group'>		   <div class='col-sm-12'>	<input  type='hidden' name='thistopicid' value='"+topicid+"' id='thistopicid'/>       	<div contentEditable='true' id='content' class='form-control' onkeyup='conkeyup()'></div>	       	<input type='hidden' name='contenttext' id='contenttext'/> 	    </div>	    <div class='col-sm-12' style='margin-top: 12px;'>    	<span class='emoji' onclick='mycommentEmoji(this)'>表情</span>   <input type='hidden' name='myemoji' value='0'/> 	<span class='pic' onclick='picclick()' >图片	</span>    	<span> 		<input type='file' name='contentimg'  class='select_Img' style='display: none' onchange='xxx(this)'> 	    <img class='preview' src=''>	</span>	<div class='myEmoji' >	<ul id='myTab' class='nav nav-tabs'>	    <li class='active'>	        <a href=''#set' data-toggle='tab'>	           预设	        </a>	    </li>	    <li><a href=''#hot' data-toggle='tab'>热门</a></li></ul><div id='myTabContent' class='tab-content'>    <div class='tab-pane fade in active' id='set'>   	<div class='emoji_1'></div>   </div>   <div class='tab-pane fade' id='hot'>    <div class='emoji_2'></div>   </div>	</div></div>	<button type='button' onclick='sendcomment()'  id='send' class='btn btn-default pull-right disabled'>发布</button> </div>  </div></form> </div>		</div>");
					
                	//	alert(topicid);
    					//$(this).parents('.lmlblog-post-bar').parents('.lmlblog-posts-list').next('.commentwindow').append($html);
                	$(this).parents('.lmlblog-post-bar').parents('.lmlblog-posts-list').next('.commentwindow').append($fhHtml);
                	var thiss=$(this).parents('.lmlblog-post-bar').parents('.lmlblog-posts-list').next('.commentwindow');
                //	alert(ss);
                	setTimeout(function(){
                		$.each(ss.list,function(i,value){
                 	    	 //  alert('循环'+value.commentid);
                 	    	 var hhtml="";
                 	    	 $.each(value.replys,function(i,value){
                       	    	hhtml+= '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><input type="hidden" name="replyid" value="'+value.replyid+'"><a href="#" class="comment-size-name"> '+value.user.uname+': </a><span class="my-pl-con">'+value.reply+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+value.rtime+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:void(0);"  class="date-dz-pl pl-hf hf-con-block pull-left" >回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
       						//	alert("循环回复");
                  	    	 });
                 	    	   var $html=$(" <div class='comment-show' style='background-image: url(images/153.png);'>"+
                 	    		        "<div class='comment-show-con clearfix'>"+
                 	    		        "<div class='comment-show-con-img pull-left'><img src='"+value.user.uhead+"' alt=''></div>"+
                 	    		       " <div class='comment-show-con-list pull-left clearfix'>"+
                 	    		           " <div class='pl-text clearfix'>"+
                 	    		               " <a href='#' class='comment-size-name'>"+value.user.uname+" : </a>"+
                 	    		               " <span class='my-pl-con'>&nbsp;"+value.ccontent+"</span>"+
                 	    		           " </div>"+
                 	    		           " <div class='date-dz'>"+
                 	    		              " <span class='date-dz-left pull-left comment-time'>2017-5-2 11:11:39</span>"+
                 	    		               " <div class='date-dz-right pull-right comment-pl-block'>"+
                 	    		                  "  <a href='javascript:;' class='removeBlock'>删除</a>"+
                 	    		                  "  <input  type='hidden' name='commentid' value='"+value.commentid+"' />"+
                 	    		                 "   <a href='javascript:;' class='date-dz-pl pl-hf hf-con-block pull-left' onclick='sendreply(this,"+value.commentid+")'>回复</a>"+
                 	    		                 "  <span class='pull-left date-dz-line'>|</span>"+
                 	    		                  "  <a href='javascript:;' class='date-dz-z pull-left'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num'>666</i>)</a>"+
                 	    		               " </div>"+
                 	    		         "   </div>"+
                 	    		          "  <div class='hf-list-con'>"+hhtml+"</div>"+
                 	    		       " </div>"+
                 	    		   " </div>"+
                 	    		"</div>");
                 	    	   
       					//	alert(value.commentid);
                 	    	   
                 	    	//   var hhhtml="<div>dddddddd<div><div>gggggg</div>";
                 	    	//   alert(hhtml);
                 	    	thiss.append($html);
                       	//	$(this).parents('.lmlblog-post-bar').parents('.lmlblog-posts-list').next('.commentwindow').append(hhttml);
       						//alert('成功');
                 	       });
                	},1000);
 	
            		$(this).attr('value','1'); 
            		//alert('append'+$(this).val());
            		return;
            	}
            });

            
      //-------------------------------------------      
            
            
            
            
    		 $("#content").keyup(function(){

    		 	//判断输入的字符串长度
    		 	var content_len = $("#content").text().replace(/\s/g,"").length;

    		 	$(".tips").text("已经输入"+content_len+"个字");
    		 	
    		 	 if(content_len > 139){
    	    		 	var contenttext=$("#content").html();
    	    		 	$('#content').val(contenttext.substring(0,140));
    	    		 	$('#content').html(contenttext.substring(0,140));
    	    		 	$('#contenttext').val(contenttext.substring(0,140));
    		          //  $(t).val($(t).val().substring(0,140));
    		        }
           
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

    		//点击按钮发送内容
    		 $("#send").click(function(){

    		 	var content=$("#content").html();

    		 	//判断选择的是否是图片格式		 
    		 	var imgPath = $(".select_Img").text();

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