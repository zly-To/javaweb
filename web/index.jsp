﻿<%@page import="java.util.List"%>
<%@page import="cn.edu.swu.domain.Article"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>赵流洋个人博客</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="个人博客，自我简介，分享资源" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/m.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easyfader.min.js"></script>
<script src="${pageContext.request.contextPath}/js/scrollReveal.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header> 
  <!--menu begin-->
  <div class="menu">
    <nav class="nav" id="topnav">
      <h1 class="logo"><a href="${pageContext.request.contextPath}/Admin/">后台管理</a></h1>
      <li><a href="${pageContext.request.contextPath}/getAll.do">网站首页</a> </li>
      <li><a href="${pageContext.request.contextPath}/about.jsp">关于我</a> </li>
      <li><a href="${pageContext.request.contextPath}/getAll.do?flagstr=study">学无止境</a>
        <ul class="sub-nav">
          <li><a href="${pageContext.request.contextPath}/getAll.do?flagstr=study">心得笔记</a></li>
            <li><a href="${pageContext.request.contextPath}/get.ud">推荐工具</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/getAll.do?flagstr=life">慢生活</a></li>
      <li><a href="${pageContext.request.contextPath}/listTime.do">时间轴</a> </li>
      <li><a href="${pageContext.request.contextPath}/gbook.jsp">留言</a> </li>
     <h3 >当前在线人数：${userCounts }</h3>
      
      <!--search end--> 
    </nav>
  </div>
  <!--menu end--> 
  
  
  <!--mnav begin-->
  <div id="mnav">
    <h2><a href="${pageContext.request.contextPath}/Admin/" class="mlogo">后台管理</a><span class="navicon"></span></h2>
    <dl class="list_dl">
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/ExperienceServlet">网站首页</a> </dt>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/about.jsp">关于我</a> </dt>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/study/">学无止境</a> </dt>
      <dd class="list_dd">
        <ul>
        	<li><a href="${pageContext.request.contextPath}/study/">心得笔记</a></li>
            <li><a href="${pageContext.request.contextPath}/get.ud">推荐工具</a></li>
         
        </ul>
      </dd>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/life/">慢生活</a> </dt>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/time.jsp">时间轴</a> </dt>
     
    </dl>
  </div>
  <!--mnav end--> 
</header>
<article> 
  <!--banner begin-->
 <div class="picsbox"> 
  <div class="banner">
    <div id="banner" class="fader">
      <li class="slide" ><a href="${pageContext.request.contextPath}/life/" target="_blank"><img src="${pageContext.request.contextPath}/images/banner01.jpg"><span class="imginfo">生活琐事</span></a></li>
      <li class="slide" ><a href="${pageContext.request.contextPath}/study/s1/" target="_blank"><img src="${pageContext.request.contextPath}/images/banner02.jpg"><span class="imginfo">各种资源分享！</span></a></li>
      <li class="slide" ><a href="${pageContext.request.contextPath}/study/" target="_blank"><img src="${pageContext.request.contextPath}/images/banner03.jpg"><span class="imginfo">学习心得</span></a></li>
      <div class="fader_controls">
        <div class="page prev" data-target="prev">&lsaquo;</div>
        <div class="page next" data-target="next">&rsaquo;</div>
        <ul class="pager_list">
        </ul>
      </div>
    </div>
  </div>
  <!--banner end-->
  <div class="toppic">
    <li> <a href="${pageContext.request.contextPath}/study/" target="_blank"> <i><img src="${pageContext.request.contextPath}/images/toppic01.jpg"></i>
      <h2>丰富的资源分享</h2>
      <span>学无止境</span> </a> </li>
    <li> <a href="${pageContext.request.contextPath}/life/" target="_blank"> <i><img src="${pageContext.request.contextPath}/images/zd01.jpg"></i>
      <h2>个人博客，属于我的小世界！</h2>
      <span>学无止境</span> </a> </li>
  </div>
  </div>
  <div class="blank"></div>
  <!--blogsbox begin-->
  <div class="blogsbox">
  
  <c:forEach items="${Experience}" var="article">
	<div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="${pageContext.request.contextPath }/${article.flagstr}/${article.title}.jsp" target="_blank">${article.title }</a></h3>
      <span class="blogpic"><a href="/" title=""><img src="${pageContext.request.contextPath}/images/toppic01.jpg" alt=""></a></span>
      <p class="blogtext">${article.title }</p>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="#">${article.publisher }</a></li>
          <li class="lmname"><a href="#">${article.flagstr }</a></li>
          
          <li class="view"><span>34567</span>已阅读</li>
          <li class="like">9999</li>
        </ul>
      </div>
      <br><br>
    </div>
    </c:forEach> 
   
  </div>
  
  <!--blogsbox end-->
  <div class="sidebar">
    <div class="zhuanti">
      <h2 class="hometitle">特别推荐</h2>
      <ul>
        <li> <i><img src="${pageContext.request.contextPath}/images/banner03.jpg"></i>
          <p>java多线程相关 <span><a href="https://www.cnblogs.com/langtianya/p/3874019.html">阅读</a></span> </p>
        </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/b04.jpg"></i>
          <p>spring源码解读 <span><a href="https://www.cnblogs.com/ITtangtang/p/3978349.html">阅读</a></span></p>
        </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/b05.jpg"></i>
          <p>java后端开发学习顺序<span><a href="https://www.cnblogs.com/caoleiCoding/p/6170555.html">阅读</a></span></p>
        </li>
      </ul>
    </div>
    <div class="tuijian">
      <h2 class="hometitle">推荐文章</h2>
      <ul class="tjpic">
        <i><img src="${pageContext.request.contextPath}/images/toppic01.jpg"></i>
        <p><a href="http://www.gulixueyuan.com/course/309">java核心技术视频</a></p>
      </ul>
      <ul class="sidenews">
        <li> <i><img src="${pageContext.request.contextPath}/images/toppic01.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/201">MySQL 数据库相关操作</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/toppic02.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/60">js相关学习</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/v1.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/193">javaweb学习</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/v2.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/46">spring相关学习</a></p>
          <span>2018-05-13</span> </li>
      </ul>
    </div>
    
    <div class="cloud">
      <h2 class="hometitle">标签云</h2>
      <ul>
        <a href="/">陌上花开</a> <a href="/">校园生活</a> <a href="/">html5</a> <a href="/">SumSung</a> <a href="/">青春</a> <a href="/">温暖</a> <a href="/">阳光</a> <a href="/">三星</a><a href="/">索尼</a> <a href="/">华维荣耀</a> <a href="/">三星</a> <a href="/">索尼</a>
      </ul>
    </div>
    <div class="links">
      <h2 class="hometitle">友情链接</h2>
      <ul>
        <li><a href="http://www.gulixueyuan.com/" target="_blank">学习资源网站</a></li>
        <li><a href="https://pan.baidu.com/s/1mpvwVNjSbtJp4csvyvmkKA" target="_blank">SSH框架资源分享 提取码：wvuh </a></li>
      
      </ul>
    </div>
    <div class="guanzhu" id="follow-us">
      <h2 class="hometitle">关注我们 </h2>
      <ul>
        <li class="qq"><a href="#" target="_blank"><span>QQ号</span>2087961925</a></li>
        <li class="email"><a href="#" target="_blank"><span>邮箱帐号</span>2087961925@qq.com</a></li>
        <li class="wxgzh"><a href="#" target="_blank"><span>微信号</span>一苇以航</a></li>
       
      </ul>
    </div>
  </div>

<footer>
  <p>Design by <a href="#" target="_blank">赵流洋</a></p>
</footer>
<a href="${pageContext.request.contextPath}/index.jsp" class="cd-top">Top</a>
</body>
</html>
