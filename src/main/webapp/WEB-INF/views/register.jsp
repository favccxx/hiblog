<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册嗨客</title>
<link rel="stylesheet" href="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
<script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/crypto-js-3.1.9/crypto-js.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/crypto-js-3.1.9/tripledes.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/crypto-js-3.1.9/mode-ecb.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/register.js"></script>
</head>
<body>

	<section class="footer-contact">
	<div class="row align-center">
		<div class="small-12 column text-center" style="display:inline-block;">
			<h1 class="homepage-section-title hide-me" style="display:inline-block;">
				注 册 <a class="hyperlink" href="http://zurb.com/university/courses">嗨 客</a> 
			</h1>
			<div style="display:inline-block;margin-left:200px;">已有账号？<a href="login">请登录</a></div>
		</div>
		<div
			class="small-11 medium-10 large-9 column text-center small-centered">
			<p class="homepage-section-desc hide-me">嗨客是一个神奇的网站，在这里你可以抒发自己的心情，记录自己的故事，还可以与好友分享你的心路历程.</p>
		</div>
		<div
			class="small-11 medium-8 large-5 column footer-contact-form small-centered"
			style="position: relative;">
			<form class="request-form" action="./userRegister" id="registerForm" method="post">
				<input id="basePath" type="hidden" value="<%=basePath%>" />
				<div class="row">
					<div class="small-12 column">
						<label for="userName">请输入用户名</label> 
						<input id="userName" type='text' class="getinfo" required maxlength='40' name='userName' />
					</div>
					<div class="small-12 column">
						<label for="nickName">请输入昵称</label> 
						<input id="nickName" type='text' class="getinfo" required maxlength='40' name='nickName' />
					</div>
					<div class="small-12 column">
						<label for="password">请输入密码</label> 		
						<input id="encryptedPwd" type='hidden' class="getinfo" maxlength='40' name='userPwd' />				
						<input id="password" type='password' class="getinfo" required maxlength='40'/>
					</div>
					<div class="small-12 column">
						<label for="password">请再次输入密码</label> 						
						<input id="confirmPwd" type='password' class="getinfo" required maxlength='40'/>
					</div>
					<div class="small-12 column">
						<label for="userMail">请输入邮箱</label> 
						<input id="userMail" type='text' class="getinfo" maxlength='40' name='userMail' />
					</div>
					<div class="small-12 column">
						<label for="userTel">请输入电话</label> 
						<input id="userTel" type='text' class="getinfo" maxlength='40' name='userTel' />
					</div>
					<div class="small-12 column">
						<label for="userDescription">请输入个人简介</label> 
						<textarea class="getinfo" id="userDescription" name="userDescription"></textarea>
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
						<button type="button" id="SubmitButton" onclick="register()" class="expanded large button home-form-submit-button">
						注册
						</button>
						<p class="text-center">
							在使用过程中有任何问题，请发邮件至 <a
								class="text-link" href="mailto:foundation@zurb.com">training@hiblog.com</a>
							或拨打电话 (400) 341-0600 x635
						</p>
					</div>
					
				</div>
				
			</form>
		</div>
	</div>
	</section>

</body>
</html>