<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<!-- allindex -->
<link rel="stylesheet" type="text/css" href="data/cache/style_5_common.css" />
<link rel="stylesheet" href="template/xlmm_wb/image/portal.css" />
<script src="template/xlmm_wb/image/default.js" type="text/javascript"></script>
<script src="template/xlmm_wb/image/jquery.min.js" type="text/javascript"></script>
<script src="static/js/portal.js" type="text/javascript"></script>
<script src="template/xlmm_wb/image/xlmm.js" type="text/javascript"></script> 
<!--  -->
<link rel="shortcut icon" href="images/tx.jpg" />
<link rel='stylesheet' id='style-css'  href='css/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='lmlblog-css'  href='css/lmlblog.css' type='text/css' media='all' />
<link rel='stylesheet' id='all-css'  href='css/all.css' type='text/css' media='all' />
<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/ueditor.all.min.js'></script>
<script type='text/javascript' src='js/base.js'></script>
<script type='text/javascript' src='js/all.js'></script>
<script type='text/javascript' src='js/plupload.full.min.js'></script>
<script type='text/javascript' src='js/layui.js'></script>
<!--  -->
  <div id="dinbu">
    <div class="dbjuzhon">
      <h2 class="logo"><a href="#" title="微头条"><img src="template/xlmm_wb/image/logo_big.png" alt="微头条" border="0" /></a></h2>
      <div class="gn_search_v2">
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
      </div>
      <ul id="daohangtub">
        <li class="xlmmtnav"><a href="allindex.jsp"><span class="dxzsa">首页</span></a></li>
        <li class="xlmmtnav"><a href="forum.jsp?mod=guide&amp;view=newthread"><span class="dxzsa">发现</span></a></li>
        <li class="xlmmtnav"><a id="topmore" onmouseover="showMenu({'ctrlid':this.id,'ctrlclass':'xlmmthover','pos':'34!'})" href="#"><span class="dxzsa">更多</span></a></li>
        <li><a href="login.html?mod=logging&amp;action=login"><span class="dxzsa">登陆</span></a></li>
        <li><a href="register.html?mod=register"><span class="dxzsa">注册</span></a></li>
      </ul>
    </div>
  </div>