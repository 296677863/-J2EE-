<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.lei.model.User" %>
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
          <a class="navbar-brand" href="#">JAVA学习交流论坛 </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
            	<li ><a href="index.jsp">首　页</a></li>
				<li><a href="#">申请版主</a></li>
				<li><a href="#">在线文档</a></li>
				<li><a href="#">站点帮助</a></li>
				<li><a href="#">资源下载</a></li>
          </ul>
          <!--currentUser.sectionList.size()!=0&&-->
          <ul class="nav navbar-nav navbar-right">
          	<c:choose>
          		<c:when test="${currentUser!=null }">
          			<li class="" style="border-right:1px solid #DDDDDD;"><a href="#">当前用户：${currentUser.nickname }『
          			<c:choose>
            	  		<c:when test="${currentUser.type!=2 }">
            	  			普通用户』</a>
            	  		</c:when>
            	  		<c:when test="${currentUser.type!=2 }">
            	  			版主』</a>
            	  		</c:when>
            	  		<c:otherwise>
            	  			管理员』</a>
            	  		</c:otherwise>
            	  	</c:choose>
            	  	</li>
					<li class="" style="border-right:1px solid #DDDDDD;"><a href="user/login_out">注销</a></li>
					<li class="" style="border-right:1px solid #DDDDDD;"><a href="javascript:checkUserLogin()">个人中心</a></<li>
          		</c:when>
          		<c:otherwise>
          			<!-- <a href="login.jsp">登录</a>| -->
					<li class="" style="border-left:1px solid #DDDDDD;"><a href="login" style="border-right:1px solid #DDDDDD;">请登录</a></li>
            		<li class="" style="border-right:1px solid #DDDDDD;"><a href="sign_up.jsp" >立即注册</a></li>
            		<c:if test="${currentUser!=null }">
            		<li class="" style="border-right:1px solid #DDDDDD;"><a href="javascript:checkUserLogin()" >个人中心</a></li>
            		</c:if>
          		</c:otherwise>
          	</c:choose>
		  </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>