<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">JAVA学习交流论坛</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            	<li ><a href="index.jsp">首　页</a></li>
				<li><a href="#">申请版主</a></li>
				<li><a href="#">在线文档</a></li>
				<li><a href="#">站点帮助</a></li>
				<li><a href="#">资源下载</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
					<!-- <a href="login.jsp">登录</a>| -->
					<li class="" style="border-left:1px solid #DDDDDD;"><a href="javascript:login()" style="border-right:1px solid #DDDDDD;">请登录</a></li>
            		<li class="" style="border-right:1px solid #DDDDDD;"><a href="register.jsp" >立即注册</a></li>
					<li class="" style="border-right:1px solid #DDDDDD;"><a href="javascript:checkUserLogin()" >个人中心</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>