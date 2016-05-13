<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

    <title></title>

    <!-- Bootstrap core CSS -->
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/sticky-footer.css" rel="stylesheet">

    <link  rel="stylesheet" type="text/css" href="resources/css/mycss.css" />
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
	function saveReply() {
		var userid=$("#userid").val();
		if(userid==null||userid==''){
			alert("请登录");
			return false;
		}
		$("#finsertReply").submit();
	}
</script>
</head>

<body>

<jsp:include page="common/top.jsp"/>
<div class="container">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">帖子</h3>
        </div>
        
        <c:forEach items="${topicViewList }" var="topicView">
        <div class="panel-body">
            <div class="row">

                <div class="col-xs-12 col-sm-12">
                    <ol class="breadcrumb">
                        <li><a href="#">首页</a></li>
                        <li><a href="#">jsp专区</a></li>
                        <li class="active">Data</li>
                    </ol>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-info"><a href="#Content">回复该贴</a></button>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-xs-3 col-sm-3">

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <a><c:choose>
									<c:when test="${(topicView.user.face==null||topicView.user.face=='')&&topicView.user.sex=='男'}">
										<img alt="" src="${pageContext.request.contextPath}/images/user/user0.gif" style="width: 100px;height: 100px;">
									</c:when>
									<c:when test="${(topicView.user.face==null||topicView.user.face=='')&&topic.user.sex=='女'}">
										<img alt="" src="${pageContext.request.contextPath}/images/user/female.gif" style="width: 100px;height: 100px;">
									</c:when>
									<c:otherwise>
										<img alt="" src="${pageContext.request.contextPath}/${topicView.user.face}" style="width: 100px;height: 100px;">
									</c:otherwise>
							</c:choose>
							<p>	★楼主&nbsp;<a href="#" style="font-size: 9pt;color: black;"><strong>${topicView.user.nickname }</strong></a></p></a>
                            <p>性别:${topicView.user.sex }</p>
                            <p>邮箱:${topicView.user.email }</p>
                            <p><c:choose>
									<c:when test="${topicView.user.type!=2 }">
										<font style="color: black;">普通用户</font>
									</c:when>
									<c:when test="${topicView.user.type!=2 }">
										<font style="color: blue;">版主</font>
					                </c:when>
									<c:otherwise>
										<font style="color: red;">管理员</font>
									</c:otherwise>
								</c:choose>
							</p>
                        </div>

                        <!-- Table -->
                       <!-- <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>

                            </tr>

                            </tbody>
                        </table>-->
                    </div>

                </div>
                <div class="col-xs-9 col-sm-9">
                    <div class="row">
                    <div class="panel panel-default">
                        <!-- Default panel contents -->
                        <div class="panel-heading">
                            <div class="row">

                                <div class="col-xs-7 col-sm-7">

                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-info">【主题】:<strong>${topicView.topic.title }</strong></button>
                                    </div>
                                </div>
                                <div class="col-xs-5 col-sm-5">
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn">发表时间:『${topicView.topic.publishtime }』</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <p>【内容】:${topicView.topic.title }</p>


                        </div>


                    </div>
                    </div>

                </div>



            </div>
            
            <c:forEach items="${topicView.replyViewList }" var="replyView" varStatus="status">
            <div class="row">

                <div class="col-xs-3 col-sm-3">

                    <div class="panel panel-default">
                        <div class="panel-body">
							<p>▲${status.index+1 }楼</p>
                            <p>${replyView.user.nickname }回复于:『${replyView.reply.publishtime }』</p>
                        </div>

                        <!-- Table -->
                        <!-- <table class="table">
                             <thead>
                             <tr>
                                 <th>#</th>

                             </tr>
                             </thead>
                             <tbody>
                             <tr>
                                 <th scope="row">1</th>

                             </tr>

                             </tbody>
                         </table>-->
                    </div>

                </div>
                <div class="col-xs-9 col-sm-9">
                    <div class="row">
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <div class="panel-heading">
                                <div class="row">

                                    <div class="col-xs-10 col-sm-10">


                                        <p>回复内容</p>

                                    </div>
                                    <div class="col-xs-2 col-sm-2">
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <p>	${replyView.reply.content }</p>
                            </div>


                        </div>
                    </div>

                </div>



            </div>

			</c:forEach>
            <div class="row">
				 <div class="col-xs-3 col-sm-3">
					<p></p>
					</div>
				
				  <div class="col-xs-9 col-sm-9">
					<form id="finsertReply" action="f_insertReply" "form-horizontal" style="margin-top: 10px;" method="post">
					
						
								【回复内容】:
						
								<textarea name="content" id="Content" cols="50" style="height:200px;width: 800px;" ></textarea>
						
								<input id="userid" name="userid" value="${currentUser.id }" type="hidden"/>
								<input id="topicid" name="topicid" value="${topicId }" type="hidden"/>
								<input type="submit" value="回复" onclick="saveReply();return false;"/>
								<Button class="btn btn-primary " data-dismiss="modal" aria-hidden="true" type="button" onclick="saveReply();return false;">提交</Button>
								<font id="error"></font>
						
					
					
					</form>
					</div>
			
            </div>

        </div>
    	</c:forEach>
    </div>



</div><!-- /.container -->
	<jsp:include page="common/footer.jsp"/>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
