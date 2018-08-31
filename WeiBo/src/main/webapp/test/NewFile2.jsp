<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="../css/style1.css">
<body>



		
			
				
					<a data-toggle="collapse" data-parent="#accordion"
						href="#collapseThree"> 点击我进行展开，再次点击我进行折叠。第 3 部分 </a>
			
			
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body">
					<div class="col-sm-6 col-xs-12 my_edit"
						style="margin-top: 0px; margin-bottom: 10px; width: 710px">
						<div class="row" id="edit_form">
							<span class="pull-left" style="margin: 15px;">回复</span> <span
								class="tips pull-right" style="margin: 15px;"></span>
							<form role="form" style="margin-top: 0px;" action="post.do"
								method="post" id="contentform" enctype="multipart/form-data">
								<div class="form-group">
									<div class="col-sm-12">

										<div contentEditable="true" id="content" class="form-control "></div>
										<input type="hidden" name="contenttext" id="contenttext" />
									</div>
									<div class="col-sm-12" style="margin-top: 12px;">
										<span class="emoji">表情</span> <span class="pic">图片 </span> <span>
											<input type="file" name="contentimg" class="select_Img"
											style="display: none" onchange="xx(this)"> <img
											class="preview" src="">

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
				</div>
			</div>
		
	

</body>
</html>