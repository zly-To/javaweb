<%@page import="cn.edu.swu.domain.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>
</head>
<body>

<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="main.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="${pageContext.request.contextPath}/Admin/main.jsp">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
               	<c:if test="${!empty user}">
					<li>${user.username}</li> 
					<li><a href="${pageContext.request.contextPath}/Admin/UserPwdUpdate.jsp">修改密码</a></li>
                	<li><a href="${pageContext.request.contextPath}/Admin/LoginOut.jsp">退出</a></li>
               	</c:if>
               	<c:if test="${empty user}">
					<li>登录</li> 
               	</c:if>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
            
                <li>
                    <a href="${pageContext.request.contextPath}/Admin/main.jsp"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                         <li><a href="${pageContext.request.contextPath}/query.ud"><i class="icon-font">&#xe008;</i>文件管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/getPage.do"><i class="icon-font">&#xe008;</i>作品管理</a></li>
                      
                        <li><a href="${pageContext.request.contextPath}/get.ly"><i class="icon-font">&#xe004;</i>留言/评论管理</a></li>
                        <li><a href="http://www.baidu.com/"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/Admin/system.jsp"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="${pageContext.request.contextPath}/getPage.action"><i class="icon-font">&#xe037;</i>用户管理</a></li>
                       
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${pageContext.request.contextPath}/">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">文件管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="${pageContext.request.contextPath}/add.ud" method="post"  enctype="multipart/form-data">
                    <table class="search-tab">
                        <tr>
                        		<td><input type="file" name="file">
                      			<td><input name="title" type="text" placeholder="名称"></td>
   	                            <td><input class="btn btn-primary btn2" name="sub" value="上传" type="submit"></td>
                
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
           
              
                <div class="result-content">

                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="article" type="checkbox"></th>
                          
                            <th>ID</th>
                            <th>文件路径</th>
                            <th>文件名</th>
                            <th>描述</th>
                            <th>操作</th>
                           
                        </tr>
                        <c:forEach items="${fileUploadBeans}" var="fileBean">
                        <tr>
                            
                           <th class="tc" width="5%"> <input class="allChoose" name="ace" type="checkbox" value="${fileBean.id }"></th>
                            <td>${fileBean.id }</td>
                            <td>${fileBean.filepath }</td>
                            <td>${fileBean.filename }</td>
                            <td>${fileBean.title }</td>
                          	
                            <td>                      
                                <a class="link-del" href="${pageContext.request.contextPath}/delete.ud?title=${fileBean.title }">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
                    <div class="list-page">
                    	<!-- 分页实现 -->
                    	
                    </div>
                </div>
           
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>