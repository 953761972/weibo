<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
				<style>
a {
	cursor: pointer
}

</style>
<div style="clear: both;"></div>

<div class="lmlblog-member-main" data="1">
	<div class="lmlblog-member-bg">
		<div class="lmlblog-member-content">
			<div class="lmlblog-member-header">
				<div class="lmlblog-member-avatar other">
					<img
						src="https://tvax4.sinaimg.cn/crop.0.0.888.888.180/006Dh9Zbly8ft1i9uqjjkj30oo0oo0ue.jpg"
						class="avatar" /> <i class="lmlblog-verify lmlblog-verify-a"
						title="司空琪"></i>
				</div>
				<div class="lmlblog-member-username">
					<h1>${logineduser.uname}</h1>
					<span class="lmlblog-mark lmlblog-girl"><i
						class="fa fa-mars"></i></span> <span class="lmlblog-mark lmlblog-lv"
						title="经验：3815">Lv.6</span> <span class="lmlblog-mark lmlblog-vip">VIP
						6</span>
				</div>
				<div class="lmlblog-member-desc">潇洒若风，剑气如虹，一见司空误终身</div>

			</div>
			<div class="lmlblog-member-menu clear">
				<li id="myindex"><a  href="index.jsp">主页</a></li>
				<li id="dongtai"><a  href="dongtai.jsp">动态</a></li>
				<li id="xiangce"><a  href="xiangce.jsp">相册</a></li>
				<li id="wenzhang"><a  href="wenzhang.jsp">文章</a></li>
				<li id="shiping"><a  href="shiping.jsp">视频</a></li>
				<li id="gerendang"><a  href="gerendang.jsp">个人档</a></li>
			</div>

			<div class="lmlblog-member-content-list clear">
				<div class="lmlblog-member-left">
					<div class="lmlblog-member-left-follow clear">


						<li><a> <strong>${datas.followers}</strong> <span>关注</span>
						</a></li>
						<li><a> <strong>${datas.fans}</strong> <span>粉丝</span>
						</a></li>
						<li><a> <strong>${datas.likes}</strong> <span>喜欢</span>
						</a></li>
						<li><a> <strong>${datas.topicCounts}</strong> <span>微博</span>
						</a></li>
					</div>

					<div class="lmlblog-member-left-profile">
						<h3>资料简介</h3>
						<li><i class="fa fa-address-book-o"></i> I D：<span>${logineduser.uname}<span></li>
						<li><i class="fa fa-transgender"></i> 性别：<span>${logineduser.sex==1?'男':logineduser.sex==2?'女':'保密'}<span></li>
						<li><i class="fa fa-map-marker"></i> 城市：<span>${logineduser.local==null?'保密':logineduser.local}<span></li>
						<li><i class="fa fa-smile-o"></i> 签名：<span>${logineduser.resume}<span></li>
						<div class="lmlblog-member-left-profile-hide">
							<li><i class="fa fa-qq"></i> Q Q：<span>sikongqi<span></li>
							<li><i class="fa fa-wechat"></i> 微信：<span>${logineduser.wechat==null?'':logineduser.wechat}<span></li>
							<li><i class="fa fa-weibo"></i> 微博：<span>sikongqi<span></li>
							<li><i class="fa fa-clock-o"></i> 生日：<span>${logineduser.birthday}<span></li>
						</div>
						<div class="lmlblog-member-left-profile-more">
							查看更多 <i class="fa fa-angle-right"></i>
						</div>
					</div>

					<div class="lmlblog-member-left-bg-music clear">
						<h3>热门</h3>
						<div id="lmlblog-memeber-bg-music" class="aplayer"></div>
						<ul>
							<li class="menu-item"><a href="#">明星</a></li>
							<li class="menu-item"><a href="#">微头条</a></li>
							<li class="menu-item"><a href="#">社会</a></li>
							<li class="menu-item"><a href="#">电影</a></li>
							<li class="menu-item"><a href="#">动漫</a></li>
						</ul>
					</div>
					<div class="lmlblog-member-left-visitor clear">
						<h3>最近访客</h3>
						<li><a href="#1" title="访问时间：22分钟前"><img
								src="picture/1.gif" class="avatar" />
							<p>born</p></a></li>
						<li><a href="#2" title="访问时间：3小时前"><span
								class="lmlblog-vip-icon"></span><img src="picture/qi.jpg"
								class="avatar" />
							<p>司空琪</p></a></li>
						<li><a href="#3" title="访问时间：10小时前"><span
								class="lmlblog-vip-icon"></span><img src="picture/2.gif"
								class="avatar" />
							<p>晴川</p></a></li>
						<li><a href="#4" title="访问时间：14小时前"><img
								src="picture/3.gif" class="avatar" />
							<p>大白兔</p></a></li>
						<li><a href="#5" title="访问时间：15小时前"><img
								src="picture/4.jpg" class="avatar" />
							<p>momo</p></a></li>
						<li><a href="#6" title="访问时间：1天前"><span
								class="lmlblog-vip-icon"></span><img src="picture/5.png"
								class="avatar" />
							<p>啦啦啦123</p></a></li>
						<li><a href="#7" title="访问时间：1天前"><img
								src="picture/6.gif" class="avatar" />
							<p>随风</p></a></li>
						<li><a href="#8" title="访问时间：1天前"><img
								src="picture/7.gif" class="avatar" />
							<p>哒哒</p></a></li>
						<li><a href="#9" title="访问时间：1天前"><img
								src="picture/8.gif" class="avatar" />
							<p>陌若</p></a></li>
						<li><a href="#10" title="访问时间：2天前"><span
								class="lmlblog-vip-icon"></span><img src="picture/9.gif"
								class="avatar" />
							<p>hidhz</p></a></li>
						<li><a href="#11" title="访问时间：2天前"><span
								class="lmlblog-vip-icon"></span><img src="picture/10.gif"
								class="avatar" />
							<p>老虎</p></a></li>
						<li><a href="#12" title="访问时间：3天前"><img
								src="picture/11.gif" class="avatar" />
							<p>不要演有事说</p></a></li>
						<li><a href="#13" title="访问时间：3天前"><img
								src="picture/12.gif" class="avatar" />
							<p>瑾似流年</p></a></li>
						<li><a href="#14" title="访问时间：3天前"><img
								src="picture/13.gif" class="avatar" />
							<p>九张机</p></a></li>
						<li><a href="#15" title="访问时间：4天前"><img
								src="picture/14.jpg" class="avatar" />
							<p>美美哒</p></a></li>
						<li><a href="#16" title="访问时间：4天前"><span
								class="lmlblog-vip-icon"></span><img src="picture/15.gif"
								class="avatar" />
							<p>zanbocm</p></a></li>
						<li><a href="#2528" title="访问时间：4天前"><img
								src="picture/16.gif" class="avatar" />
							<p>yfdaifhc</p></a></li>
						<li><a href="#52" title="访问时间：4天前"><img
								src="picture/17.png" class="avatar" />
							<p>xcxla</p></a></li>
						<li><a href="#0292" title="访问时间：4天前"><img
								src="picture/18.jpg" class="avatar" />
							<p>墨虹客栈</p></a></li>
						<li><a href="#1753" title="访问时间：5天前"><img
								src="picture/19.jpg" class="avatar" />
							<p>空间吧</p></a></li>
					</div>
					<div class="lmlblog-member-left-bg-xg clear">
						<h3>相关推荐</h3>
						<div id="lmlblog-memeber-bg-xg" class="aplayer"></div>
						<a href="http://www.lmlblog.com/blog/yanlingjiao/1.html"
							target="_blank"><h2>燕凌姣个人主页</h2> <img
							src="http://www.lmlblog.com/blog/yanlingjiao/images/jiao8.jpg"
							alt="燕凌姣个人主页">
							<p>
								一袭蓝衣亭亭玉立，姣若春梅绽雪，神如月射寒江，香培玉琢、英姿飒爽;其静兰生幽谷，其动若飞若扬，性格大气坚毅、疏朗开阔，举止敢爱敢恨、聪明磊落...他就是燕凌姣</p></a>
					</div>
				</div>
				<div class="lmlblog-member-right">
					<div class="lmlblog-post-list">
						<div class="lmlblog-posts-list words"
							style="background-image: url(images/058.png);" data="4197">