<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- allindex -->
<link rel="stylesheet" type="text/css" href="data/cache/style_5_common.css" />
<link rel="stylesheet" href="template/xlmm_wb/image/portal.css" />
<!-- <script src="template/xlmm_wb/image/default.js" type="text/javascript"></script> -->
<!--  -->
<link rel="stylesheet" type="text/css" href="css/style1.css">


<!--  -->
<link rel="shortcut icon" href="images/tx.jpg" />
<link rel='stylesheet' id='style-css'  href='css/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='lmlblog-css'  href='css/lmlblog.css' type='text/css' media='all' />
<link rel='stylesheet' id='all-css'  href='css/all.css' type='text/css' media='all' />

<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" 
integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
crossorigin="anonymous"></script>

<script type='text/javascript' src='js/ueditor.all.min.js'></script>
<script type='text/javascript' src='js/all.js'></script>
<script type='text/javascript' src='js/plupload.full.min.js'></script>
<script type='text/javascript' src='js/layui.js'></script>
  <script type='text/javascript' src='js/base.js'></script>  
<script src="static/js/portal.js" type="text/javascript"></script>
<script src="template/xlmm_wb/image/xlmm.js" type="text/javascript"></script> 
  <script type='text/javascript' src='js/myindex.js'></script> 
</head>	
<body>
<!--  -->
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
     <!--  -->
<!--      			<div class="col-sm-6 col-xs-12 my_edit" >
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
							    		<input type="file" name=""  class="select_Img" style="display: none" >
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
							    	<span> <input type="file" id="selectImg" value=""></input> </span>
									<button type="button" id="send" class="btn btn-default pull-right disabled">发布</button>
							    </div>
						  </div>
					</form> 
		   		</div>
	            



			</div> -->
     <!--  -->
      </div>
     <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> 
    </div>
  </div>
</div>	
<!--  -->
  <div id="dinbu">
    <div class="dbjuzhon">
      <h2 class="logo"><a href="#" title="微头条"><img src="template/xlmm_wb/image/logo_big.png" alt="微头条" border="0" /></a></h2>
<!--       <div class="gn_search_v2">
        <form class="xlmm-hd-search" id="scbar_form" method="post" autocomplete="off" onsubmit="searchFocus($('scbar_txt'))" action="search.jsp?searchsubmit=yes" target="_blank" name="scbar_form">
          <input type="hidden" name="mod" id="scbar_mod" value="forum" />
          <input type="hidden" name="formhash" value="553e9a2b" />
          <input type="hidden" name="srchtype" value="title" />
          <input type="hidden" name="srhfid" value="" />
          <input type="hidden" name="srhlocality" value="forum::mypage" />
          <input type="hidden" name="searchsubmit" value="yes" />
          <input type="text" name="srchtxt" value="" placeholder="输入您要搜索的内容" autocomplete="off" class="W_inputs" />
          <a title="搜索" class="S_ficon" href="javascript:;" onclick="$('scbar_form').submit();" id="submitBtn">f</a>
        </form> 
      </div> -->
        <form class="navbar-form navbar-left" role="search" style="margin-top: 0px">
		        <div class="form-group" style="margin-top: 5px;padding-top: 2px">
		            <input type="text" class="form-control" placeholder="#热门话题#">
		            <i class="glyphicon glyphicon-search btn_search" ></i>
		           <!--  <button type="submit" class="btn btn-default">提交</button> -->
		        </div>		        
		</form>
      <ul id="daohangtub">
        <li class="xlmmtnav"><a href="allindex.jsp"><span class="dxzsa">首页</span></a></li>
        <li class="xlmmtnav"><a href="forum.jsp?mod=guide&amp;view=newthread"><span class="dxzsa">发现</span></a></li>
        <li class="xlmmtnav"><a id="topmore" onmouseover="showMenu({'ctrlid':this.id,'ctrlclass':'xlmmthover','pos':'34!'})" href="#"><span class="dxzsa">更多</span></a></li>
       
       <% if(request.getSession().getAttribute("logineduser")==null){%>
    	 <li><a href="login.jsp?mod=logging&amp;action=login"><span class="dxzsa">登陆</span></a></li>
    	 <li><a href="register.jsp?mod=register"><span class="dxzsa">注册</span></a></li>
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="width: 40px;height: 30px;margin-left: 25px">
    
    </button>
       <%}else{%>
         <li><a href="index.jsp"><span class="dxzsa">用户${logineduser.uname}</span></a></li>
       <!-- Button trigger modal -->

       <%} %>
      </ul>
    </div>
  </div>