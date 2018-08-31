/*package com.yc.qita;

public class Test1 {
	public static void main(String[] args) {
		String str="<div class='col-sm-6 col-xs-12 my_edit' style='margin-top: 0px;margin-bottom: 10px; width: 710px'>"+
				"<div class='row' id='edit_form' >"+
				  "  <span class='pull-left' style='margin:15px;''>编写评论</span>"+
					"<span class='tips pull-right' style='margin:15px;'></span>"+
			      "  <form role='form' style='margin-top:0px;' action='comment.do' method='post' id='contentform' enctype='multipart/form-data'>"+
					"	  <div class='form-group'>"+
					"		   <div class='col-sm-12'>"+
						" <input  type='hidden' name='thistopicid' id='contenttext'/>"+
						"	       	<div contentEditable='true' id='content' class='form-control ' onkeyup='onkeyup()'></div>"+
						"	       	<input type='hidden' name='contenttext' id='contenttext'/> "+
						"	    </div>"+
						"	    <div class='col-sm-12' style='margin-top: 12px;'>"+
							"    	<span class='emoji' >表情</span>"+

							"    	<span class='pic' >图片	</span>"+
							"    	<span>"+
							   " 		<input type='file' name='contentimg'  class='select_Img' style='display: none' onchange='xx(this)'>"+
							   " 	    <img class='preview' src=''>"+
							    	    
							    "	</span>"+
							    	

							    "	<div class='myEmoji' >"+
							    	"	<ul id='myTab' class='nav nav-tabs'>"+
									"	    <li class='active'>"+
									"	        <a href='#set' data-toggle='tab'>"+
									"	           预设"+
									"	        </a>"+
									"	    </li>"+
									"	    <li><a href=''#hot' data-toggle='tab'>热门</a></li>"+
										    
										"</ul>"+
										"<div id='myTabContent' class='tab-content'>"+
										"    <div class='tab-pane fade in active' id='set'>"+
										 "   	<div class='emoji_1'></div>"+

										 "   </div>"+
										 "   <div class='tab-pane fade' id='hot'>"+
										  "    <div class='emoji_2'></div>"+
										 "   </div>"+
										   
									"	</div>"+
							    	"</div>"+
							    	
								"	<button type='button' id='sendcomment' onclick='sendcomment()' class='btn btn-default pull-right disabled'>发布</button>"+
							   " </div>"+
						"  </div>"+
					"</form> "+
		   		"</div>	"+	   		
		"	</div>";
	//	System.out.println(str.trim());
		
		String str2="<div class='col-sm-6 col-xs-12 my_edit' style='margin-top: 0px;margin-bottom: 10px; width: 710px'><div class='row' id='edit_form' >  <span class='pull-left' style='margin:15px;''>编写新鲜事</span><span class='tips pull-right' style='margin:15px;'></span>  <form role='form' style='margin-top:0px;' action='post.do' method='post' id='contentform' enctype='multipart/form-data'>	  <div class='form-group'>		   <div class='col-sm-12'>	       	<div contentEditable='true' id='content' class='form-control ' ></div>	       	<input type='hidden' name='contenttext' id='contenttext'/> 	    </div>	    <div class='col-sm-12' style='margin-top: 12px;'>    	<span class='emoji' >表情</span>    	<span class='pic' >图片	</span>    	<span> 		<input type='file' name='contentimg'  class='select_Img' style='display: none' onchange='xx(this)'> 	    <img class='preview' src=''>	</span>	<div class='myEmoji' >	<ul id='myTab' class='nav nav-tabs'>	    <li class='active'>	        <a href=''#set' data-toggle='tab'>	           预设	        </a>	    </li>	    <li><a href=''#hot' data-toggle='tab'>热门</a></li></ul><div id='myTabContent' class='tab-content'>    <div class='tab-pane fade in active' id='set'>   	<div class='emoji_1'></div>   </div>   <div class='tab-pane fade' id='hot'>    <div class='emoji_2'></div>   </div>	</div></div>	<button type=''button' id=''send' class=''btn btn-default pull-right disabled'>发布</button> </div>  </div></form> </div>		</div>";
		//System.out.println(str2.length());
		
		String str3="    <div class='comment-show'>"+
        "<div class='comment-show-con clearfix'>"+
            "<div class='comment-show-con-img pull-left'><img src='images/header-img-comment_03.png' alt=''></div>"+
           " <div class='comment-show-con-list pull-left clearfix'>"+
               " <div class='pl-text clearfix'>"+
                   " <a href='#' class='comment-size-name'>张三 : </a>"+
                   " <span class='my-pl-con'>&nbsp;来啊 造作啊!</span>"+
               " </div>"+
               " <div class='date-dz'>"+
                  " <span class='date-dz-left pull-left comment-time'>2017-5-2 11:11:39</span>"+
                   " <div class='date-dz-right pull-right comment-pl-block'>"+
                      "  <a href='javascript:;' class='removeBlock'>删除</a>"+
                     "   <a href='javascript:;' class='date-dz-pl pl-hf hf-con-block pull-left'>回复</a>"+
                     "  <span class='pull-left date-dz-line'>|</span>"+
                      "  <a href='javascript:;' class='date-dz-z pull-left'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num'>666</i>)</a>"+
                   " </div>"+
             "   </div>"+
              "  <div class='hf-list-con'></div>"+
           " </div>"+
       " </div>"+
    "</div>";
		System.out.println(str3.trim());
	String str4="<div class='date-dz'>    <span class='date-dz-left pull-left comment-time'>2017-5-2 11:11:39</span>   <div class='date-dz-right pull-right comment-pl-block'>      <a href='javascript:;' class='removeBlock'>删除</a>      <a href='javascript:;' class='date-dz-pl pl-hf hf-con-block pull-left'>回复</a>       <span class='pull-left date-dz-line'>|</span>        <a href='javascript:;' class='date-dz-z pull-left'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num'>666</i>)</a>   </div>  </div>";	
	}
}



$("    <div class='comment-show' style='background-image: url(images/153.png);'>"+
        "<div class='comment-show-con clearfix'>"+
        "<div class='comment-show-con-img pull-left'><img src='"+${comment.user.uhead}+"' alt=''></div>"+
       " <div class='comment-show-con-list pull-left clearfix'>"+
           " <div class='pl-text clearfix'>"+
               " <a href='#' class='comment-size-name'>"+${comment.user.uname}+" : </a>"+
               " <span class='my-pl-con'>&nbsp;"+${comment.ccontent}+"</span>"+
           " </div>"+
           " <div class='date-dz'>"+
              " <span class='date-dz-left pull-left comment-time'>2017-5-2 11:11:39</span>"+
               " <div class='date-dz-right pull-right comment-pl-block'>"+
                  "  <a href='javascript:;' class='removeBlock'>删除</a>"+
                 "   <a href='javascript:;' class='date-dz-pl pl-hf hf-con-block pull-left'>回复</a>"+
                 "  <span class='pull-left date-dz-line'>|</span>"+
                  "  <a href='javascript:;' class='date-dz-z pull-left'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num'>666</i>)</a>"+
               " </div>"+
         "   </div>"+
          "  <div class='hf-list-con'></div>"+
       " </div>"+
   " </div>"+
"</div>");*/