<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
<!-- start: CSS -->
<link id="bootstrap-style" href="resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/AdminLTE.min.css" rel="stylesheet">
<link href="resources/css/admin.css" rel="stylesheet">

<style type="text/css">
.login, .register {
	/*background-image: url("//o4sjkq0di.qnssl.com/img/deep-login-bg.jpg");*/
	background-image: none;
	background-color: #17181c;
	padding: 0px;
}

.panel-dark>.panel-heading {
	background-color: #1c94c7;
	border-color: #1878A2;
}

.btn-primary {
	background-color: #4a89dc;
	border-color: #4279C2;
}

.btn-primary:HOVER {
	background-color: #5397F1;
	border-color: #5091E7;
}
</style>
<!-- end: CSS -->

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="resources/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="resources/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src=resources/js/html5shiv.min.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

<link href="resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />

</head>
<body class="login">
	<div class="row row-table page-wrapper" style="position: absolute;">
		<canvas></canvas>
		<div class="col-lg-3 col-md-6 col-sm-8 col-xs-12 align-middle">
			<!-- START panel-->
			<div data-toggle="play-animation" data-play="fadeIn" data-offset="0"
				class="panel panel-dark panel-flat anim-running anim-done" style="">
				<div class="panel-heading text-center">
					<a href='index.jsp'>
						<h3 class="text-center mt-lg" style="color: #fff">
							<strong>JAVA学习交流论坛  用户注册</strong>
						</h3>
					</a>
				</div>
				<div class="panel-body">
					<form role="form" class="mb-lg" method="post" id="reg-form"
						action="/user/auth/sign_up">
						<div class="text-right mb-sm">
							<a href="/user/auth/login.php" class="text-muted">已有帐号?点我登录</a>
						</div>
					
						<div class="form-group has-feedback">
							<span class="fa fa-envelope form-control-feedback text-muted"></span>
							<input id="user-email" name="email" type="text"
								placeholder="用户登录Email" value=""
								class="form-control email {remote:'/user/auth/check_user.php',messages:{remote:'该邮箱已被注册！'}}">
						</div>
						<div class="form-group has-feedback">
							<span class="fa fa-users form-control-feedback text-muted"></span>
							<input id="aff-id" name="aff_id" type="text"
								placeholder="用户昵称" value="" class="form-control">
						</div>
						<div class="form-group has-feedback">
							<span class="fa fa-lock form-control-feedback text-muted"></span>
							<input id="password" name="password" type="password"
								placeholder="注册密码" value=""
								class="form-control required {minlength:6,maxlength:24}">
						</div>
						<div class="form-group has-feedback">
							<span class="fa fa-lock form-control-feedback text-muted"></span>
							<input id="password2" name="password2" type="password"
								placeholder="确认密码" value=""
								class="form-control required {minlength:6,maxlength:24,equalTo:'#password'}">
						</div>
						
						<div class="form-group has-feedback">
							<span class="fa fa-user form-control-feedback text-muted"></span>
							<input id="user-name" name="user_name" type="text"
								placeholder="手机号码" value=""
								class="form-control required {minlength:4,maxlength:24,remote:'/user/auth/check_user.php',messages:{remote:'该用户名已被注册！'}}">
						</div>
						
						
						<div class="clearfix">
							<div class="checkbox c-checkbox pull-left mt0">
								<label><input id="agree-ss" type="checkbox" name="agree"
									value="1">我同意服务条款</label>
							</div>
							<!-- <div class="pull-right"><a href="#" class="text-muted"><small>忘记密码?</small></a>
                     </div> -->
						</div>
						<button type="submit" class="btn btn-block btn-primary">注册</button>
					</form>
				</div>
			</div>
			<!-- END panel-->
		</div>
	</div>
</body>
<script src="resources/js/ie-emulation-modes-warning.js"></script>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
<script src="resources/js/jquery.validate.js" type="text/javascript"></script>
<script src="resources/sjs/jquery.metadata.js" type="text/javascript"></script>
<script type="text/javascript">
jQuery.extend(jQuery.validator.messages, {
	required : "请填写本字段",
	remote : "验证失败",
	email : "请输入正确的电子邮件",
	url : "请输入正确的网址",
	date : "请输入正确的日期",
	dateISO : "请输入正确的日期 (ISO).",
	number : "请输入正确的数字",
	digits : "请输入正确的整数",
	creditcard : "请输入正确的信用卡号",
	equalTo : "请再次输入相同的值",
	accept : "请输入指定的后缀名的字符串",
	maxlength : jQuery.validator.format("允许的最大长度为 {0} 个字符"),
	minlength : jQuery.validator.format("允许的最小长度为 {0} 个字符"),
	rangelength : jQuery.validator.format("允许的长度为{0}和{1}之间"),
	range : jQuery.validator.format("请输入介于 {0} 和 {1} 之间的值"),
	max : jQuery.validator.format("请输入一个最大为 {0} 的值"),
	min : jQuery.validator.format("请输入一个最小为 {0} 的值")
});
$("#reg-form").validate({
			rules : {
				required : {
					required : true
				},
				email : {
					required : true,
					email : true
				},
				date : {
					required : true,
					date : true
				},
				url : {
					required : true,
					url : true
				}
			},
			errorClass : "label-warning",
			highlight : function(element, errorClass, validClass) {
				$(element).parents('.form-group').addClass('has-error');
			},
			unhighlight : function(element, errorClass, validClass) {
				$(element).parents('.form-group').removeClass('has-error');
				$(element).parents('.form-group').addClass('success');
			},
			submitHandler: function(form) {
				//console.info(document.getElementById("agree-ss").checked);
				if(!document.getElementById("agree-ss").checked){
					alert("请确认同意条款，否则不能注册");
					return false;
				}
				
				//var submitbtn = $(element).find("[type=submit]");
				form.submit(); 
			}
});
try{
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
       
    }else{
      $(function(){
  var canvas = document.querySelector('canvas'),
      ctx = canvas.getContext('2d')
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
  ctx.lineWidth = .3;
  ctx.strokeStyle = (new Color(150)).style;

  var mousePosition = {
    x: 30 * canvas.width / 100,
    y: 30 * canvas.height / 100
  };

  var dots = {
    nb: 250,
    distance: 100,
    d_radius: 150,
    array: []
  };

  function colorValue(min) {
    return Math.floor(Math.random() * 255 + min);
  }
  
  function createColorStyle(r,g,b) {
    return 'rgba(' + r + ',' + g + ',' + b + ', 0.8)';
  }
  
  function mixComponents(comp1, weight1, comp2, weight2) {
    return (comp1 * weight1 + comp2 * weight2) / (weight1 + weight2);
  }
  
  function averageColorStyles(dot1, dot2) {
    var color1 = dot1.color,
        color2 = dot2.color;
    
    var r = mixComponents(color1.r, dot1.radius, color2.r, dot2.radius),
        g = mixComponents(color1.g, dot1.radius, color2.g, dot2.radius),
        b = mixComponents(color1.b, dot1.radius, color2.b, dot2.radius);
    return createColorStyle(Math.floor(r), Math.floor(g), Math.floor(b));
  }
  
  function Color(min) {
    min = min || 0;
    this.r = colorValue(min);
    this.g = colorValue(min);
    this.b = colorValue(min);
    this.style = createColorStyle(this.r, this.g, this.b);
  }

  function Dot(){
    this.x = Math.random() * canvas.width;
    this.y = Math.random() * canvas.height;

    this.vx = -.5 + Math.random();
    this.vy = -.5 + Math.random();

    this.radius = Math.random() * 2;

    this.color = new Color();
    console.log(this);
  }

  Dot.prototype = {
    draw: function(){
      ctx.beginPath();
      ctx.fillStyle = this.color.style;
      ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2, false);
      ctx.fill();
    }
  };

  function createDots(){
    for(i = 0; i < dots.nb; i++){
      dots.array.push(new Dot());
    }
  }

  function moveDots() {
    for(i = 0; i < dots.nb; i++){

      var dot = dots.array[i];

      if(dot.y < 0 || dot.y > canvas.height){
        dot.vx = dot.vx;
        dot.vy = - dot.vy;
      }
      else if(dot.x < 0 || dot.x > canvas.width){
        dot.vx = - dot.vx;
        dot.vy = dot.vy;
      }
      dot.x += dot.vx;
      dot.y += dot.vy;
    }
  }

  function connectDots() {
    for(i = 0; i < dots.nb; i++){
      for(j = 0; j < dots.nb; j++){
        i_dot = dots.array[i];
        j_dot = dots.array[j];

        if((i_dot.x - j_dot.x) < dots.distance && (i_dot.y - j_dot.y) < dots.distance && (i_dot.x - j_dot.x) > - dots.distance && (i_dot.y - j_dot.y) > - dots.distance){
          if((i_dot.x - mousePosition.x) < dots.d_radius && (i_dot.y - mousePosition.y) < dots.d_radius && (i_dot.x - mousePosition.x) > - dots.d_radius && (i_dot.y - mousePosition.y) > - dots.d_radius){
            ctx.beginPath();
            ctx.strokeStyle = averageColorStyles(i_dot, j_dot);
            ctx.moveTo(i_dot.x, i_dot.y);
            ctx.lineTo(j_dot.x, j_dot.y);
            ctx.stroke();
            ctx.closePath();
          }
        }
      }
    }
  }

  function drawDots() {
    for(i = 0; i < dots.nb; i++){
      var dot = dots.array[i];
      dot.draw();
    }
  }

  function animateDots() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    moveDots();
    connectDots();
    drawDots();

    requestAnimationFrame(animateDots);	
  }

  $('canvas').on('mousemove', function(e){
    mousePosition.x = e.pageX;
    mousePosition.y = e.pageY;
  });

  $('canvas').on('mouseleave', function(e){
    mousePosition.x = canvas.width / 2;
    mousePosition.y = canvas.height / 2;
  });

  createDots();
  requestAnimationFrame(animateDots);	
});
    }
}catch(e){}
</script>

</html>