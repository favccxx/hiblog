<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
<script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/crypto-js-3.1.9/crypto-js.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/crypto-js-3.1.9/tripledes.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/crypto-js-3.1.9/mode-ecb.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/login.js"></script>
</head>
<body>

	<section class="footer-contact">
	<div class="row align-center">
		<div class="small-12 column text-center">
			<h1 class="homepage-section-title hide-me">
				欢 迎 <a class="hyperlink" href="http://zurb.com/university/courses">登 录</a> 
			</h1>
		</div>
		<div
			class="small-11 medium-10 large-9 column text-center small-centered">
			<p class="homepage-section-desc hide-me">嗨客是一个神奇的网站，在这里你可以抒发自己的心情，记录自己的故事，还可以与好友分享你的心路历程.</p>
		</div>
		<div
			class="small-11 medium-8 large-5 column footer-contact-form small-centered"
			style="position: relative;">
			<form class="request-form" action="./userLogin" id="loginForm" method="post">
				<input id="basePath" type="hidden" value="<%=basePath%>" />
				<div class="row">
					<div class="small-12 column">
						<label for="userName">用户名</label> 
						<input id="userName" type='text' class="getinfo" required maxlength='40' name='userName' value="123" />
					</div>
					<div class="small-12 column">
						<label for="password">密码</label> 
						<input id="encryptedPwd" type='hidden' class="getinfo" required maxlength='40' name='password' />
						<input id="password" type='password' class="getinfo" required maxlength='40' value="123"/>
					</div>
					<!-- <div class="small-12 medium-6 column">
						<label for="fieldCompany">验证码</label> 
						<input id="fieldCompany" type='text' class="getinfo" required maxlength='40' name='Company' />
					</div>
					<div class="small-12 medium-6 column">
						<label for="fieldEmail">刷新</label> <input id="fieldEmail"
							type='email' class="getinfo" required maxlength='100'
							name='email' />
					</div>	 -->				
					<div class="small-12 column form-contact-form-button">
						<button type="button" id="SubmitButton" onclick="login()" class="expanded large button home-form-submit-button">
						登录
						</button>
						<p class="text-center">
							在使用过程中有任何问题，请发邮件至 <a
								class="text-link" href="mailto:foundation@zurb.com">training@hiblog.com</a>
							或拨打电话 (400) 341-0600 x635
						</p>
					</div>
					<div class="small-12 medium-6 column">
						<button type="button" class="expanded small button success">
						忘记密码
						</button>
					</div>
					<div class="small-12 medium-6 column">
						<button type="button" class="expanded small button alert" onclick="register()">
						立即注册
						</button>
					</div>	
				</div>
				<input type="hidden" name="_after"
					value="http://foundation.zurb.com/get-involved/thanks.html">
				<input type="hidden" name="_replyto" value="%email"> <input
					type="hidden" name="_subject"
					value="ZURB | Foundation Training Inquiry"> <input
					type="hidden" name="_to" value="foundation@zurb.com">
			</form>
		</div>
	</div>
	</section>
	
<script type="text/script">

function register(){
	window.open("register", "_self");
}

</script>

</body>
</html>