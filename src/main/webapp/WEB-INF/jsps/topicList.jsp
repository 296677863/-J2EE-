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

    <title>${sectionName}</title>

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
</head>

<body>

<jsp:include page="common/top.jsp"/>
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
                        <button type="button" class="btn btn-info">发表主题</button>
                    </div>
                </div>
            </div>
            
			<c:forEach items="${ptTopicList }" var="topic">
            <div class="row">





                <div class="col-xs-9 col-sm-9">
                    <img class="pic" src="resources/images/32-35615732.jpg" border="0" height="40px" >
                    <a href="" target="_blank">
                        <img src="resources/images/headtopic_1.gif" align="absmiddle" alt="置顶帖标志" title="置顶帖标志">
                    </a>
                    <a href="https://bbs.aliyun.com/read/152079.html" name="readlink" id="a_ajax_152079" class="subject_t f14"><b><font color="#FF00FF">${topic.title }</font></b></a>&nbsp;  <span class="gray tpage"></span>   <img src="resources/images/img.gif" alt="img" align="absmiddle">
                    <img src="resources/images/digest_2.gif" align="absmiddle" style="margin-top:4px;" alt="精华帖标志" title="精华帖标志">
                    <div class="mt10">
                        <a href="" class="c9 mr5">${topic.userid}</a>
                            <span class="c9 mr5">
                            发表于：${topic.publishtime }
                            </span>
                            <span class="c9 mr5">
                            <a class="c9" href="">修改时间</a>
                            </span>
                            <span class="c6">
                            <a class="c9" href="" title="${topic.publishtime }"> ${topic.publishtime }</a>
                            </span>

                    </div>
                </div>

                <div class="col-xs-2 col-sm-2 col-xs-offset-1">

        
                    <div class="read-recommend mr5">
                        回复 <br>
                        <strong style="font-weight:700">159</strong>
                    </div>

                </div>
            </div>
            </c:forEach>

          
            <div class="row">
                <nav>
                    <ul class="pagination">
                        <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                    </ul>
                </nav>
            </div>

        </div>
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
