﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微博轻头条社区 - Powered by Discuz!</title>
<script type="text/javascript">
  //<![CDATA[
  var STYLEID = '5', STATICURL = 'static/', IMGDIR = 'template/xlmm_wb/default', VERHASH = 'jve', charset = 'gbk', discuz_uid = '0', cookiepre = 'yxMP_2132_', cookiedomain = '', cookiepath = '/', showusercard = '1', attackevasive = '0', disallowfloat = 'newthread', creditnotice = '1|威望|,2|金钱|,3|贡献|', defaultstyle = '', REPORTURL = 'aHR0cDovL2MuanVubWkzNjAuY29tL3BvcnRhbC5waHA=', SITEURL = 'local', JSPATH = 'static/js/', CSSPATH = 'data/cache/style_', DYNAMICURL = '';
  //]]>  
  </script>
<script type="text/javascript">
  //<![CDATA[
     var jQ = jQuery.noConflict();
  //]]>
  </script>
<style>
</style>
</head>
<body id="nv_portal" class="pg_index" onkeydown="if(event.keyCode==27) return false;">
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div class="miniblog">
   <div class="xlmmmtcc"> 
    <div id="topmore_menu" class="xlmmbefore" style="display:none;;">
      <ul>
        <li><a href="javascript:;" onclick="setHomepage('http://baidu.com/');">设为首页</a><a href="http://baidu.com/" onclick="addFavorite(this.href, '微头条');return false;">收藏本站</a><a href="#">首页</a></li>
      </ul>
    </div>
  </div>
  <div id="qmenu_menu" class="p_pop blk" style="display: none;">
    <div class="ptm pbw hm"> 请 <a href="javascript:;" class="xi2" onclick="lsSubmit()"><strong>登录</strong></a> 后使用快捷导航<br />
      没有帐号？<a href="member.jsp?mod=register" class="xi2 xw1">立即注册</a> </div>
    <div id="fjump_menu" class="btda"></div>
  </div>
  <div id="xlmmfi"></div>
  <script type="text/javascript">
    //<![CDATA[
    var xlmmnvss = $('xlmmfi');
    var xlmmnvssoffset = parseInt(fetchOffset(xlmmnvss)['top']);
    _attachEvent(window, 'scroll', function () {
    var xlmmm_scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);
    if(xlmmm_scrollTop >= xlmmnvssoffset){
    if (BROWSER.ie && BROWSER.ie < 7) {
    xlmmnvss.style.position = 'absolute';
    xlmmnvss.style.top = xlmmm_scrollTop + 'px';
    }else{
    xlmmnvss.className = '';
    xlmmnvss.innerHTML  = '<style>#dinbu{ background: rgba(255,255,255,0.94);}</style>';
    }
    }else{
    xlmmnvss.className = '';
    xlmmnvss.innerHTML  = '<style>#dinbu{ background: #FFF;box-shadow: 0 0 1px 0px rgba(0,0,0,0.15);}</style>';
    }
    });
    //]]>
    </script>
  <div id="mu" class="cl"></div>
  <div class="wp">
    <div id="h_pop">
      <ul class="p_pop h_pop" id="mn_home_menu" style="display: none">
        <li><a href="7" hidefocus="true">sw</a></li>
        <li><a href="7" hidefocus="true">sw</a></li>
      </ul>
      <div class="p_pop h_pop" id="mn_userapp_menu" style="display: none"></div>
    </div>
  </div>
  <div id="wp" class="wp"> 
    <script type="text/javascript">
      //<![CDATA[
      function removeElement(id)
      {
      document.getElementById(id).style.display="none";
      }
      //]]>
      </script>
    <style id="diy_style" type="text/css">
</style>
    <div class="cl" style="width:1170px; margin:0px auto; padding: 16px 0 0 0;"> 
      <!--[diy=xlmm-t]-->
      <div id="xlmm-t" class="area"></div>
      <!--[/diy]-->
      <div class="xlmm-leftnav cl">
        <div id="xlmm-leftnav" class="xlmm-leftnavw">
          <ul>
            <li class="a" id="mn_portal"><a href="allindex.html" hidefocus="true" title="Portal">首页<span>Portal</span></a></li>
            <li id="mn_forum"><a href="forum.jsp" hidefocus="true" title="BBS">新鲜事<span>BBS</span></a></li>
            <li id="mn_P1"><a href="source/news/" hidefocus="true" title="news">微头条<span>news</span></a></li>
            <li id="mn_N8686"><a href="source" hidefocus="true">搞笑</a></li>
            <li id="mn_Nf6de"><a href="source" hidefocus="true">社会</a></li>
            <li id="mn_N6401"><a href="source" hidefocus="true">时尚</a></li>
            <li id="mn_Ndcd1"><a href="source" hidefocus="true">电影</a></li>
            <li id="mn_N7c09"><a href="source" hidefocus="true">体育</a></li>
            <li id="mn_N0fac"><a href="source" hidefocus="true">动漫</a></li>
            <li id="mn_Nb243"><a href="member.jsp?mod=register" hidefocus="true">注册页</a></li>
            <li id="mn_Ncf42"><a href="member.jsp?mod=logging&action=login" hidefocus="true">登录页</a></li>
          </ul>
        </div>
      </div>
      <div class="w660 cl"> 
        <!--[diy=xlmm-s]-->
        <div id="xlmm-s" class="area">
          <div id="framejQxxRC" class="cl_frame_bm frame move-span cl frame-1">
            <div id="framejQxxRC_left" class="column frame-1-c">
              <div id="framejQxxRC_left_temp" class="move-span temp"></div>
              <div id="portal_block_483" class="cl_block_bm block move-span">
                <div id="portal_block_483_content" class="dxb_bc">
                  <div class="xlmmshow">
                    <ul class="carousel-list">
                      <li class=""><a href="thread-83-1-1.html" target="_blank"><img src="data/attachment/block/1b/1b701edd0def373fd44b996feb8672e6.jpg" width="660" height="300" /><span>(单间出租)可短租！万家湾，鹏瑞</span></a></li>
                      <li class=""><a href="thread-85-1-1.html" target="_blank"><img src="data/attachment/block/94/94d917048ae329947b1e213cd8a86419.jpg" width="660" height="300" /><span>成都楼盘最新开盘，炎华置信花千集</span></a></li>
                      <li class=""><a href="thread-10-1-1.html" target="_blank"><img src="data/attachment/block/de/defc6d426e2fd0625aa53ddf0b9abfa4.jpg" width="660" height="300" /><span>中国飞行员学驾苏35画面曝光 俄试飞员坐后</span></a></li>
                      <li class=""><a href="thread-86-1-1.html" target="_blank"><img src="data/attachment/block/1b/1bc34a17b151d402b89da74dbafa1e4d.jpg" width="660" height="300" /><span>富豪公馆开盘在即，买房送车位</span></a></li>
                    </ul>
                    <div class="md"> <span></span><span></span><span></span><span></span> </div>
                  </div>
                  <script type="text/javascript">
                    //<![CDATA[
                    jQuery(".xlmmshow").slide({ titCell:".md span", mainCell:".carousel-list",effect:"fold",autoPlay:true,delayTime:1000,interTime:5000 });
                    //]]>
                    </script> 
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--[/diy]-->
        <style>
          <![CDATA[
          .div1twz a { font-size: 18px;font-weight: 700; }

          #fwin_recommend_adds table { width:180px;}
          #fwin_recommend_adds .m_c {padding:10px 20px;}
          #fwin_recommend_adds .xlmmrecommends { display:block !important; position:absolute; top:15px; right:20px;}
          ]]>
          </style>
        <div class="xlxx" id="tsclose"> <a>共有 49 个主题</a> <span onclick="removeElement('tsclose')">X</span> </div>
        <ul id="alist">
          <div class="div1t"> <a href="#"><img src="template/xlmm_wb/image/ad.png" /></a> </div>
          <li class="div1t">
            <div class="div1tt D"> <a href="#"></a>
              <p style="width:326px; height:184px; background:#000000">
                <video controls style="width:100%; height:184px;">
                  <source src="" type="video/mp4" />
                </video>
              </p>
            </div>
            <div class="div1twz D"> <a href="thread-91-1-1.html" target="_blank">大熊猫又生孩子了，这次熊妈妈一脸糟逼</a> </div>
            <div class="grxx D"> <a href="home.jsp?mod=space&amp;uid=1" target="_blank"><img src="" /></a><a href="home.jsp?mod=space&amp;uid=1" target="_blank" class="h20">admin</a> <a href="thread-91-1-1.html" class="hfsj h20">2017-11-6</a> </div>
            <div class="zfs D"> <a href="thread-91-1-1.html" target="_blank"><span class="S_ficon zfsicn">P</span>540</a> <a href="forum.jsp?mod=post&amp;action=reply&amp;fid=2&amp;tid=91&amp;reppost=279&amp;extra=&amp;page=1" onclick="showWindow('reply', this.href)"><span class="S_ficon zfsicn">N</span>2</a> <a id="recommend_adds" href="forum.jsp?mod=misc&amp;action=recommend&amp;do=add&amp;tid=91&amp;hash=553e9a2b" onclick="showWindow('login', this.href)" class="borno"><span class="S_ficon zfsicn">Q</span>2</a> </div>
          </li>
          <li class="div1t">
            <div class="div1tt"> <a href="thread-3-1-1.html"><img src="template/xlmm_wb/image/member/web_login_bg.jpg?mod=image&aid=7&size=230x230&key=d66b174ce8232860" /></a> </div>
            <div class="xlmm1tr">
              <div class="div1ttmd">
                <div class="div1twz"> <a href="thread-3-1-1.html" target="_blank">有创意！济南“绿皮火车”秒变食堂大学生赶车吃饭</a> </div>
                <div class="grxx mt10"> <a href="home.jsp?mod=space&amp;uid=1" target="_blank"><img src="" /></a><a href="home.jsp?mod=space&amp;uid=1" target="_blank" class="h20">admin</a> <a href="thread-3-1-1.html" class="hfsj h20">2016-11-4</a>
                  <div class="zfs"> <a href="thread-3-1-1.html" target="_blank"><span class="S_ficon zfsicn">P</span>1869</a> <a href="forum.jsp?mod=post&amp;action=reply&amp;fid=36&amp;tid=3&amp;reppost=3&amp;extra=&amp;page=1" onclick="showWindow('reply', this.href)"><span class="S_ficon zfsicn">N</span>8</a> <a id="recommend_adds" href="forum.jsp?mod=misc&amp;action=recommend&amp;do=add&amp;tid=3&amp;hash=553e9a2b" onclick="showWindow('login', this.href)" class="borno"><span class="S_ficon zfsicn">Q</span>1</a> </div>
                </div>
              </div>
            </div>
          </li>
          <li class="div1t">
            <div class="div1twz duo"> <a href="thread-83-1-1.html" target="_blank">(单间出租)可短租，只租女生！万家湾，鹏瑞利广场，4号线中坝地铁口</a> </div>
            <ul id="duo">
              <li class=""><a href="thread-83-1-1.html"><img src="data/attachment/block/1b/1b9a004ce211768c14f07a17ac18004c.jpg?mod=image&aid=80&size=230x230&key=cb4792d5fd74e2a9" /></a></li>
              <li class=""><a href="thread-83-1-1.html"><img src="data/attachment/block/1b/1b701edd0def373fd44b996feb8672e6.jpg?mod=image&aid=82&size=230x230&key=1daae7e383962345" alt="" /></a></li>
              <li class=""><a href="thread-83-1-1.html"><img src="data/attachment/block/0f/0fbb8dd7b8510a3e51fc50bff4042869.jpg?mod=image&aid=83&size=230x230&key=2a8f36f015fa24c6" /></a></li>
              <li class=""><a href="thread-83-1-1.html"><img src="data/attachment/image/000/00/00/02_230_230.jpg?mod=image&aid=84&size=230x230&key=211a0a209f094baa" /></a></li>
            </ul>
            <div class="grxx duo"> <a href="home.jsp?mod=space&amp;uid=1" target="_blank"><img src="" /></a><a href="home.jsp?mod=space&amp;uid=1" target="_blank" class="h20">admin</a> <a href="thread-83-1-1.html" class="hfsj h20">2017-5-10</a>
              <div class="zfs"> <a href="thread-83-1-1.html" target="_blank"><span class="S_ficon zfsicn">P</span>654</a> <a href="forum.jsp?mod=post&amp;action=reply&amp;fid=43&amp;tid=83&amp;reppost=260&amp;extra=&amp;page=1" onclick="showWindow('reply', this.href)"><span class="S_ficon zfsicn">N</span>2</a> <a id="recommend_adds" href="forum.jsp?mod=misc&amp;action=recommend&amp;do=add&amp;tid=83&amp;hash=553e9a2b" onclick="showWindow('login', this.href)" class="borno"><span class="S_ficon zfsicn">Q</span>1</a> </div>
            </div>
          </li>
        </ul>
        <div id="ajaxtag"></div>
        <div style="margin:15px 0;">
          <div id="ajaxld" class="xlxx"> <a href="javascript:;">正在为您加载...</a> </div>
          <div id="ajaxlast" class="xlxx" style="display:none;"> <a href="forum.jsp?mod=guide&amp;view=new">更多精彩帖子</a> </div>
        </div>
        <script type="text/javascript">
          //<![CDATA[
          (function($){var url = 'portal.jsp?';
          var pages= 1;
          var xlmmpage=5;
          $(document).ready(function(){
          $(window).scroll(function() {
          if(pages >= xlmmpage) { 
          }
          else {
          if ($(document).scrollTop() <= 0) { }

          var range = 500; 
          var srollPos = $(window).scrollTop();  
          totalheight = parseFloat($(window).height()) + parseFloat(srollPos);  
            if(($(document).height()-range) <= totalheight) {
          $("#ajaxld").show();
          pages++;
          url = url + '&page=' + pages;
          $.ajax({
          url:url,
          })
          .success(function(s) {
          setTimeout(function() {
          $("#alist").append(gethtml(s, first1, last1, first2, last2));
          $("#ajaxld").hide();
          if(pages >= xlmmpage) { 
          $('#ajaxlast').show();
          }
          }, 300);
          li=$("li");
          })
          .error(function() {
          $("#ajaxld").hide();
          });
          return false;
          }
          }

          });
          })
          var first1 = "<ul id=\"alist\"";
          var last1 = "<div id=\"ajaxtag\"></div>";
          var first2 = ">";
          var last2 = "</ul>";

          function gethtml(html, first1, last1, first2, last2)
          {
          html = html.replace(/\n|\r/g, "");
          var indexf1 = html.indexOf(first1);
          var indexl1 = html.indexOf(last1);
          html = html.substring(indexf1, indexl1);
          indexf2 = html.indexOf(first2) + first2.length;
          indexl2 = html.lastIndexOf(last2);
          html = html.substring(indexf2, indexl2);
          return html;
          }})(jQuery)
          //]]>
          </script> 
      </div>
      <div class="y cl" style="width:340px">
        <!--[diy=xlmm-r]-->
        <div id="xlmm-r" class="area">
          <div id="frameg449xd" class="cl_frame_bm frame move-span cl frame-1">
            <div id="frameg449xd_left" class="column frame-1-c">
              <div id="frameg449xd_left_temp" class="move-span temp"></div>
              <div id="portal_block_484" class="cl_block_bm block move-span">
                <div id="portal_block_484_content" class="dxb_bc">
                  <div class="biaotikuangjia xlmmfixed">
                    <h3>社区新鲜事</h3>
                    <ul>
                      <li class="wbspkj">
                        <div class="imgsp"> <a href="thread-75-1-1.html" target="_blank"><img src="data/attachment/block/32/32e2d27463734f92f8cbd96e34fb79ea.jpg" width="120" height="70" /></a> </div>
                        <div class="wbspwz"> <a href="thread-75-1-1.html" target="_blank">洛阳千亩牡丹园再现武皇巡园 游客围观拍照</a><a href="thread-75-1-1.html" target="_blank" class="fz8">2017-04-12</a> </div>
                      </li>
                      <li class="wbspkj">
                        <div class="imgsp"> <a href="thread-3-1-1.html" target="_blank"><img src="data/attachment/block/e8/e8c3d71d292b85542ccc69e8563e0da4.jpg" width="120" height="70" /></a> </div>
                        <div class="wbspwz"> <a href="thread-3-1-1.html" target="_blank">有创意！济南“绿皮火车”秒变食堂大学生赶</a><a href="thread-3-1-1.html" target="_blank" class="fz8">2016-11-04</a> </div>
                      </li>
                      <li class="wbspkj">
                        <div class="imgsp"> <a href="thread-83-1-1.html" target="_blank"><img src="data/attachment/block/af/af8a7e990b6559324c8934b1c9bc8c4d.jpg" width="120" height="70" /></a> </div>
                        <div class="wbspwz"> <a href="thread-83-1-1.html" target="_blank">(单间出租)可短租，只租女生！万家湾，鹏瑞</a><a href="thread-83-1-1.html" target="_blank" class="fz8">2017-05-10</a> </div>
                      </li>
                      <li class="wbspkj">
                        <div class="imgsp"> <a href="thread-30-1-1.html" target="_blank"><img src="data/attachment/block/93/93ce9fe0981ccd603116d0a4fc1de50a.jpg" width="120" height="70" /></a> </div>
                        <div class="wbspwz"> <a href="thread-30-1-1.html" target="_blank">香港一中学新规引争议 上课去厕所需填表</a><a href="thread-30-1-1.html" target="_blank" class="fz8">2016-11-12</a> </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div id="portal_block_485" class="cl_block_bm block move-span">
                <div id="portal_block_485_content" class="dxb_bc">
                  <div class="biaotikuangjia">
                    <h3>实时热点</h3>
                    <div class="wbmr">
                      <div class="imgwbmr"> <a href="thread-75-1-1.html" target="_blank"><img src="data/attachment/block/3b/3b97eb631fdf1ec3e742e8cd6c7f0ae5.jpg" width="50" height="50" /></a> </div>
                      <div class="wbmrf14"> <a href="thread-75-1-1.html" target="_blank">洛阳千亩牡丹园再现武皇巡园 游客</a> </div>
                      <div class="wbmrf8"> <a href="thread-75-1-1.html" target="_blank">进入四月，河南洛阳的牡丹进入盛花期，</a> </div>
                    </div>
                    <div class="wbmr">
                      <div class="imgwbmr"> <a href="thread-3-1-1.html" target="_blank"><img src="data/attachment/block/69/69c8125c25428e981f35529acee3d4aa.jpg" width="50" height="50" /></a> </div>
                      <div class="wbmrf14"> <a href="thread-3-1-1.html" target="_blank">有创意！济南“绿皮火车”秒变食堂</a> </div>
                      <div class="wbmrf8"> <a href="thread-3-1-1.html" target="_blank">2016年10月30日，山东济南，一高校校园</a> </div>
                    </div>
                    <div class="wbmr">
                      <div class="imgwbmr"> <a href="thread-83-1-1.html" target="_blank"><img src="data/attachment/block/4f/4f5463cc197bfa6cdc29dbcde354462c.jpg" width="50" height="50" /></a> </div>
                      <div class="wbmrf14"> <a href="thread-83-1-1.html" target="_blank">(单间出租)可短租，只租女生！万家</a> </div>
                      <div class="wbmrf8"> <a href="thread-83-1-1.html" target="_blank">我们不是中介，更无中介费！ 公司打造</a> </div>
                    </div>
                    <div class="wbmr">
                      <div class="imgwbmr"> <a href="thread-30-1-1.html" target="_blank"><img src="data/attachment/block/27/27d3038ee80dd9bb8d12e0b30aa9ea45.jpg" width="50" height="50" /></a> </div>
                      <div class="wbmrf14"> <a href="thread-30-1-1.html" target="_blank">香港一中学新规引争议 上课去厕所</a> </div>
                      <div class="wbmrf8"> <a href="thread-30-1-1.html" target="_blank">近日有网民在讨论区发文指，元朗伯特</a> </div>
                    </div>
                    <div class="wbmr">
                      <div class="imgwbmr"> <a href="thread-85-1-1.html" target="_blank"><img src="data/attachment/block/74/7410b8dae2cf02851735a71b4fe64760.jpg" width="50" height="50" /></a> </div>
                      <div class="wbmrf14"> <a href="thread-85-1-1.html" target="_blank">成都楼盘最新开盘，炎华置信花千集</a> </div>
                      <div class="wbmrf8"> <a href="thread-85-1-1.html" target="_blank"></a> </div>
                    </div>
                  </div>
                </div>
              </div>
              <div id="portal_block_486" class="cl_block_bm block move-span">
                <div id="portal_block_486_content" class="dxb_bc"></div>
              </div>
              <div id="portal_block_487" class="cl_block_bm block move-span">
                <div id="portal_block_487_content" class="dxb_bc">
                  <style>
                    <![CDATA[
                    .more-items-content {overflow: hidden;margin-bottom: -20px; margin-right:-20px;}
                    .more-items-content .item {float: left;margin: 0 20px 20px 0;}
                    .more-items-content .item a {color: #222;line-height: 1.4;font-size: 14px;}
                    ]]>
                    </style>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--[/diy]-->
        <div id="userfix"></div>
      </div>
      </div>
      <script type="text/javascript">
        //<![CDATA[
        var navs = $('xlmm-leftnav');
        var navsoffset = parseInt(fetchOffset(navs)['top']);
        _attachEvent(window, 'scroll', function () {
        var xlmmm_scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);
        if(xlmmm_scrollTop + 50 >= navsoffset){
        if (BROWSER.ie && BROWSER.ie < 7) {
        navs.style.position = 'absolute';
        navs.style.top = xlmmm_scrollTop + 'px';
        }else{
        navs.style.position = 'fixed';
        navs.style.top = '50px';
        }
        }else{
        navs.style.position = 'static';
        }
        });

        var userfix = $('userfix');
        var userfixoffset = parseInt(fetchOffset(userfix)['top']);
        _attachEvent(window, 'scroll', function () {
        var xlmmm_scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);
        if(xlmmm_scrollTop + 50 >= userfixoffset){
        if (BROWSER.ie && BROWSER.ie < 7) {
        userfix.style.position = 'absolute';
        userfix.style.top = xlmmm_scrollTop + 'px';
        }else{
        userfix.innerHTML  = '<style>.userfix{ position:fixed; top:50px; width:340px;}</style>';
        }
        }else{
        userfix.innerHTML  = '<style>.userfix{ position:static;}</style>';
        }
        });

        //]]>
        </script> 
    </div>
    <style>
      <![CDATA[
      #ft {padding: 0px 0 0px;border-top: 0;line-height: 1.8;color: #666;background-color: #f2f2f5; }
      #ft .other_link {text-align: center;padding: 20px 0 20px;}
      #ft .other_link .copy {line-height: 1em;margin-bottom: 10px;}
      #ft .other_link .copy a, #ft .other_link .copy_v2 a, #ft .other_link .company a {margin-right: 20px;color: #808080;text-decoration: none;}

      .W_ficon {font-family: "wbficonregular" !important;display: inline-block;-webkit-font-smoothing: antialiased;}
      .W_gotop em {display: inline-block;font-size: 20px;width: 26px;height: 30px;line-height: 30px;line-height: 32px\9;overflow: hidden;color: #fff;}
      .xlmm_gotop {left: 50%;bottom:150px;margin-left: 590px;position:fixed;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight)-500+'px');z-index:10}
      .W_gotop {display: block;width: 40px;margin-bottom:10px;height: 35px;padding-top: 5px;text-align: center;text-decoration: none;cursor: pointer;opacity: 0.6;background-color: #696e78;visibility: visible;transform: translateZ(0px);}
      .m_gotop {display: block;width: 40px;margin-bottom:10px;height: 35px;padding-top: 5px;text-align: center;text-decoration: none;cursor: pointer;}
      .W_gotop:hover {opacity: 1;}
      .S_bg2_c {color: #fff;}
      /* xl_bdfxcss */
      #mmtop-more_menu .bdshare-button-style0-32 {float: left;border: 1px solid #ddd;box-shadow: 1px 1px 0 rgba(221,221,221,.2); background:#FFFFFF}
      #mmtop-more_menu .bdshare-button-style0-32 a {background: #fff url(template/xlmm_wb/image/xlmm-fx.png);margin: 5px 10px;display: block; width:32px; height:32px; }
      #mmtop-more_menu .bdshare-button-style0-32 .bds_qzone {background-position: -126px 0;}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_qzone:hover { background-position: -126px -34px;}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_tsina {background-position: -84px 0}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_tsina:hover {background-position: -84px -34px;}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_weixin {background-position: -42px 0}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_weixin:hover { background-position: -42px -34px;}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_tieba { background-position: 0 0}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_tieba:hover {background-position: 0 -34px;}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_copy {background-position: -167px 0}
      #mmtop-more_menu .bdshare-button-style0-32 .bds_copy:hover {background-position: -168px -34px;}
      .xlmmfnavs span{ display:none;}
      .xlmmfnavs em.active a{ color:red !important;}


      ]]>
      </style>
  </div>
  <div id="ft">
    <div class="other_link clearfix">
      <p class="copy"><a href="archiver/">Archiver</a><a href="forum.php?mobile=yes">手机版</a><a href="forum.php?mod=misc&action=showdarkroom">小黑屋</a> <a href="c.junmi360.com" target="_blank">demo</a> <a href="" target="_blank">鄂ICP备15022352号-4</a></p>
      <p class="copy S_txt2">服务热线：0000 000 060&nbsp;&nbsp;服务时间：9:00-21:00&nbsp;&nbsp;广告合作客服QQ：00000000</p>
      <p class="copy"><span class="copy S_txt2">&copy; 2001-2017 <a href="" target="_blank">Comsenz Inc.</a></span><span>Powered by <strong><a href="" target="_blank">Discuz! X3.4</a></strong></span></p>
    </div>
  </div>
  <div class="xlmm_gotop">
    <ul>
      <li class="m_gotop" style="display:none;"><a id="mmtop-more" onmouseover="showMenu({'ctrlid':this.id,'ctrlclass':'hover','pos':'34!'})" class="W_gotop" title="分享"><em class="W_ficon S_bg2_c">Y</em></a></li>
      <li class="m_gotop"><a href="javascript:void(0);" onclick="window.location.href=window.location.href;" class="W_gotop" title="刷新"><em class="W_ficon S_bg2_c">C</em></a></li>
      <li class="m_gotop"><a href="forum.php?mod=misc&amp;action=nav" onclick="showWindow('nav', this.href, 'get', 0);" class="W_gotop" title="快速发布" style="background: #fa7d3c"><em class="W_ficon S_bg2_c">L</em></a></li>
      <li class="m_gotop"><a id="xlmm_scrollToTop" href="javascript:void(0);" class="W_gotop" style="display:none;" title="回顶部"><em class="W_ficon S_bg2_c">B</em></a></li>
    </ul>
  </div>
  <script type="text/javascript">
    //<![CDATA[
    jQ(function() {
    var e, t = jQ(window),
    n = jQ("#xlmm_scrollToTop");
    n.on("click", function() {
    jQ("html, body").animate({
    scrollTop: 0
    }), n.fadeOut()
    }), t.on("scroll", function() {
    clearTimeout(e), e = setTimeout(function() {
    t.scrollTop() > 10 ? n.fadeIn() : n.fadeOut()
    }, 100)
    })
    })

    //]]>
    </script> 
</div>
</body>
</html>
