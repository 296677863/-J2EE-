<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>${sectionName}</title>
<!-- Bootstrap core CSS -->
<link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="resources/css/sticky-footer.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/mycss.css" />
<!--css-->
<!-- end: CSS -->
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="resources/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="resources/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src=resources/js/html5shiv.min.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->
<script src="resources/js/ie-emulation-modes-warning.js"></script>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	function insertTopic() {
		var userid=$("#userid").val();
		if(userid==null||userid==''){
			alert("请登录");
			return false;
		}
		$("#finsertTopic").submit();
	}
</script>
</head>
<body>
	<jsp:include page="common/top.jsp" />
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">${sectionName }</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-xs-12 col-sm-12">
						<ol class="breadcrumb">
							<li><a href="#">首页</a></li>
							<li class="active">${sectionName }</li>
						</ol>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-info" 
								><a href="#content">发表主题</a></button>
						</div>
					</div>
				</div>
				<c:forEach items="${topicViewList }" var="topicView">
					<div class="row">
						<div class="col-xs-9 col-sm-9">
							<img class="pic" src="resources/images/32-35615732.jpg"
								border="0" height="40px"> <a href="" target="_blank">
								<img src="resources/images/headtopic_1.gif" align="absmiddle"
								alt="置顶帖标志" title="置顶帖标志">
							</a> <a href="f_topicDetails?topicId=${topicView.topic.id}"
								name="readlink" id="a_ajax_152079" class="subject_t f14"><b><font
									color="#FF00FF">${topicView.topic.title }</font></b></a>&nbsp; <span
								class="gray tpage"></span> <img src="resources/images/img.gif"
								alt="img" align="absmiddle"> <img
								src="resources/images/digest_2.gif" align="absmiddle"
								style="margin-top: 4px;" alt="精华帖标志" title="精华帖标志">
							<div class="mt10">
								<a href="" class="c9 mr5">${topicView.user.nickname}</a> <span
									class="c9 mr5"> 发表于：${topicView.topic.publishtime } </span> <span
									class="c9 mr5"> <a class="c9" href="">修改时间</a>
								</span> <span class="c6"> <a class="c9" href=""
									title="${topicView.topic.publishtime }">
										${topicView.topic.publishtime }</a>
								</span>
							</div>
						</div>
						<div class="col-xs-2 col-sm-2 col-xs-offset-1">
							<div class="read-recommend mr5">
								回复 <br> <strong style="font-weight: 700">${topicView.replyCount }</strong>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="row">
					<nav>
						<ul class="pagination">
							<c:choose>
								<c:when test="${pageUtil.current==1 }">
									<li class="disabled"><a>首页</a></li>
									<li class="disabled"><a>上一页</a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${pageUtil.url}?page=1&&sectionId=${sectionId }">首页</a></li>
									<li><a
										href="${pageUtil.url}?page=${pageUtil.current-1}&&sectionId=${sectionId }">上一页</a></li>
								</c:otherwise>
							</c:choose>
							<c:forEach var="i" begin="${pageUtil.begin}"
								end="${pageUtil.end}">
								<c:choose>
									<c:when test="${i==pageUtil.current}">
										<li class="active"><a
											href="${url}?page=${i}&&sectionId=${sectionId }"><span>${i}</span>
										</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${url}?page=${i}&&sectionId=${sectionId }"><span>${i}</span>
										</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${pageUtil.current<pageUtil.end}">
									<li><a
										href="${url}?page=${pageUtil.current+1}&&sectionId=${sectionId }">下一页</a></li>
									<li><a
										href="${url}?page=${pageUtil.end }&&sectionId=${sectionId }">尾页</a></li>
								</c:when>
								<c:otherwise>
									<li class="disabled"><a>下一页</a></li>
									<li class="disabled"><a>尾页</a></li>
								</c:otherwise>
							</c:choose>
							<!-- <li><a href="#" aria-label="Previous"><span
									aria-hidden="true">«</span></a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"><span
									aria-hidden="true">»</span></a></li> -->
						</ul>
					</nav>
				</div>

			</div>
		</div>
	</div>

	<table>
		<form action="f_insertTopic" id="finsertTopic" method="post">
			<input type="hidden" name="userid" id="userid" value="${currentUser.id }" /> <input
				type="hidden" name="sectionid" id="sectionid" value="${sectionId }" />
			<tr>
				<td>发表标题：</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>发表内容：</td>
				<td><textarea name="content" id="content"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="发表" onclick="insertTopic();return false;"/></td>
				<td></td>
			</tr>
		</form>
	</table>
	<!-- /.container -->
	<jsp:include page="common/footer.jsp" />
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
