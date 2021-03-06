<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎登陆</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="resources/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="resources/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="resources/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="resources/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="resources/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="resources/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="resources/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="resources/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="resources/media/css/login.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="resources/media/image/favicon.ico" />
	<script type="text/javascript">
	if (top != self) {
		if (top.location != self.location)
			top.location = self.location;
	}
</script>

</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="login">

	<!-- BEGIN LOGO -->

	<div class="logo">

		<img src="resources/media/image/logo-big.png" alt="" /> 

	</div>

	<!-- END LOGO -->

	<!-- BEGIN LOGIN -->
<div class="content">
		<div id="alertMessage"></div>
		<!-- BEGIN LOGIN FORM -->

	<form class="form-vertical login-form" action="user/login" method="post">
			<input name="userKey" type="hidden" id="userKey" value="D1B5CC2FE46C4CC983C073BCA897935608D926CD32992B5900" />

			<h3 class="form-title">用户登录</h3>

			<div class="alert alert-error hide">

				<button class="close" data-dismiss="alert"></button>

				<span>请输入用户名和密码</span>

			</div>

			<div class="control-group">

				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

				<label class="control-label visible-ie8 visible-ie9">email</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="m-wrap placeholder-no-fix" iscookie="true" style="width: 220px" type="text" id="email" value="${email }" placeholder="用户邮箱" name="email"/>

					</div>

				</div>

			</div>
			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Password</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-lock"></i>

						<input class="m-wrap placeholder-no-fix"  style="width: 220px" type="password" id="password" value="${password }" placeholder="密码" name="password"/>

					</div>

				</div>

			</div>
	<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9"></label>
				

				<div class="controls">
	
					<div class="input-icon left">
					
						<i class="icon-picture"></i>
						<input class="m-wrap placeholder-no-fix" style="width: 130px" type="text" id="captcha" placeholder="验证码" name="captcha"/>
						<img alt="" src="resources/Kaptcha.jpg" id="Kaptcha" />
						
					</div>
					

				</div>

			</div>
		
			<div class="form-actions">

				<label class="checkbox">

				<input type="checkbox" id="on_off" checked="checked" name="remember"  value="1"/>记住我

				</label>

				<button type="submit" id="but_login" class="btn green pull-right">

				登录 <i class="m-icon-swapright m-icon-white"></i>

				</button>            

			</div>

			
		</form>
</div>

	<!-- END LOGIN -->

	<!-- BEGIN COPYRIGHT -->

	<div class="copyright">

		2013 &copy; Metronic. Admin Dashboard Template.

	</div>

	<!-- END COPYRIGHT -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->
	<script src="resources/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="resources/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="resources/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="resources/media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="resources/media/js/excanvas.min.js"></script>

	<script src="resources/media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="resources/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="resources/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="resources/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="resources/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script src="resources/media/js/jquery.validate.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<!--  <script src="resources/media/js/app.js" type="text/javascript"></script>-->

	<!-- <script src="resources/media/js/login.js" type="text/javascript"></script>  -->    
	<script type="text/javascript" src="resources/js/login.js"></script>

	<!-- END PAGE LEVEL SCRIPTS --> 



</body>

<!-- END BODY -->

</html>