<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="top_nav">
			<div class="top_nav_left">
				欢迎访问云财务有限公司<a href="#">登录</a><a href="#">注册</a>
			</div>
			<div class="top_nav_right">
				欢迎致电：400-152-2585<a href="#" class="wx"></a><a href="#" class="wb"></a>
			</div>
		</div>
		<div class="header ui-container">
			<div class="logo"></div>
			<ul class="nav">
				<li><a href="#">首　　页</a></li>/
				<li><a href="#nav2">业务介绍</a></li>/
				<li><a href="#nav3">关于我们</a></li>/
				<li><a href="#nav4">合作案例</a></li>/
				<li><a href="#nav5">联系案例</a></li>
			</ul>
		</div>
		<div class="banner"></div>
		
		<dl class="serve ui-container">
			<dt></dt>
	      <c:forEach items="${serve}" var="serve">
			<dd>	
				<ul>
					<li>累计服务商家<p><strong>${serve.value.sellerCount}</strong>万家</p></li>
					<li>代理金额多达<p><strong>${serve.value.money}</strong>亿元</p></li>
					<li>累计为客户节省<p><strong>${serve.value.savemoney}</strong>万元</p></li>
				</ul>
						</dd>
				 </c:forEach>
			
		</dl>
		<div class="serve_content" id="nav2"></div>
		<h2>服务范围<small>我们提供一体化的服务内容</small></h2>	
		<div class="serve_range ui-container">
		 <c:forEach items="${company_type}" var="types">		
			<dl class="serve_range_con">
				<h3>${types.type}</h3>
				<dt>试用规模：</dt>
				<dd>1-${types.size}人</dd>
				<dt>服务质量：</dt>
				<dd>${types.quality}</dd>
				<dt>体　　验：</dt>
				<dd>${types.experience}</dd>
				<dt>价　　格：</dt>
				<dd class="price">￥${types.price}</dd>
				<a href="#" class="btns">查看详情</a>
			</dl>
			</c:forEach>
			<!--  <dl class="serve_range_con">
				<h3>初创期企业</h3>
				<dt>试用规模：</dt>
				<dd>1-20人</dd>
				<dt>服务质量：</dt>
				<dd>标准化作业流程，三级质量把控体系。银行账准确无误，全部票据入账。</dd>
				<dt>体　　验：</dt>
				<dd>APP在手，做账每一步实时监控。全部票据影印电子化，大公司才有的待遇。</dd>
				<dt>价　　格：</dt>
				<dd class="price">￥1258</dd>
				<a href="#" class="btns">查看详情</a>
			</dl> 
			<dl class="serve_range_con">
				<h3>初创期企业</h3>
				<dt>试用规模：</dt>
				<dd>1-20人</dd>
				<dt>服务质量：</dt>
				<dd>标准化作业流程，三级质量把控体系。银行账准确无误，全部票据入账。</dd>
				<dt>体　　验：</dt>
				<dd>APP在手，做账每一步实时监控。全部票据影印电子化，大公司才有的待遇。</dd>
				<dt>价　　格：</dt>
				<dd class="price">￥1258</dd>
				<a href="#" class="btns">查看详情</a> -->
			</dl>
		</div>
		<div class="serve_case" id="nav4"></div>	
		<div class="about_us ui-container" id="nav3">
			<h2>关于我们<small>我们提供一体化的服务内容</small></h2>
			<p>${company.descUs}</p>
			<div class="about_us_img"></div>
		</div>	
		<div class="news" id="nav6">
			<div class="ui-container">
				<a href="#" class="more">查看更多</a>
				<ul class="news_con">
					<li>
						<div class="poster"><img src="images/img.jpg"/></div>
						<h3>代理记账找谁家</h3>
						<p>代理记账我们最在行，最专业，最靠谱，选择我们是你最对的选择，快选择我们吧</p>
						<div class="btn"><a href="#">查看详情</a></div>
					</li>
					<li>
						<div class="poster"><img src="images/img.jpg"/></div>
						<h3>代理记账找谁家</h3>
						<p>代理记账我们最在行，最专业，最靠谱，选择我们是你最对的选择，快选择我们吧</p>
						<div class="btn"><a href="#">查看详情</a></div>
					</li>
					<li>
						<div class="poster"><img src="images/img.jpg"/></div>
						<h3>代理记账找谁家</h3>
						<p>代理记账我们最在行，最专业，最靠谱，选择我们是你最对的选择，快选择我们吧</p>
						<div class="btn"><a href="#">查看详情</a></div>
					</li>
					<li>
						<div class="poster"><img src="images/img.jpg"/></div>
						<h3>代理记账找谁家</h3>
						<p>代理记账我们最在行，最专业，最靠谱，选择我们是你最对的选择，快选择我们吧</p>
						<div class="btn"><a href="#">查看详情</a></div>
					</li>
				</ul>
			</div>
		</div>	
		<div class="contact_us ui-container" id="nav5">
			<h2>联系我们<small>如有任何疑问请联系我们，我们7*24小时竭诚为您服务</small>400-014-8828</h2>
			<ul class="contact_us_con">
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
			</ul>
		</div>
		<div class="footer">
			<div class="footer_con">
				<ul class="nav">
					<li><a href="#">网站首页</a></li>/
					<li><a href="javascript:void(0)" onclick="document.getElementById('nav3').scrollIntoView();">关于我们</a></li>/
					<li><a href="javascript:void(0)" onclick="document.getElementById('nav2').scrollIntoView();">产品中心</a></li>/
					<li><a href="#">合作伙伴</a></li>/
					<li><a href="#">招商加盟</a></li>/
					<li><a href="javascript:void(0)" onclick="document.getElementById('nav6').scrollIntoView();">新闻中心</a></li>/
					<li><a href="javascript:void(0)" onclick="document.getElementById('nav5').scrollIntoView();">联系我们</a></li>
				</ul>
				<div class="contact">
					<li>办公地址：${company.address }</li>
					<li>电　　话：${company.phone }</li>
					<li>邮　　箱：${company.mail }</li>
					<li>copyright © 2017 by ${company.name } All rights reserved.</li>
				</div>
				
				<img class="log2" src="images/logo_2.jpg">
				<img class="code" src="images/code.jpg">
			</div>			
		</div>
</body>
</html>