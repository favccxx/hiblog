<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" href="<%=basePath%>assets/css/foundation.min.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/foundation-icons.css">
<script type="text/javascript" src="<%=basePath%>assets/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/foundation.js"></script>

<script type="text/javascript">

	$(document).foundation();

function save(){
	var albumTypeName = $("#albumTypeId").find("option:selected").text();
	
	$("#albumTypeName").val(albumTypeName);		

 	$("#saveAlbumForm").submit();
}

</script>

</head>
<body>

<section class="footer-contact">
	<div class="row align-center">
		<div class="small-12 column text-center">
			<h1 class="homepage-section-title hide-me">
				 <a class="hyperlink" href="http://zurb.com/university/courses">创 建 相 册</a> 
			</h1>
		</div>
		<div
			class="small-11 medium-10 large-9 column text-center small-centered">
			<p class="homepage-section-desc hide-me">嗨客是一个神奇的网站，在这里你可以抒发自己的心情，记录自己的故事，还可以与好友分享你的心路历程.</p>
		</div>
		<div
			class="small-11 medium-8 large-5 column footer-contact-form small-centered"
			style="position: relative;">
			<form class="request-form" action="./saveAlbum" id="saveAlbumForm" method="post">
				<input id="basePath" type="hidden" value="<%=basePath%>" />
				<div class="row">
					<div class="small-12 column">
						<label for="albumName">相册名称</label> 
						<input id="albumName" type='text' class="getinfo" required maxlength='40' name='albumName' />
					</div>
					<div class="small-12 column">
						<label for="albumTypeId">相册类型</label> 
						<input id="albumTypeName" type='hidden' class="getinfo" name='albumTypeName' />
						<select id="albumTypeId" name="albumTypeId" required class="getinfo">
							<option value="">请选择</option>
							<option value="1">家庭</option>
							<option value="2">旅游</option>
							<option value="3">校友</option>
							<option value="4">技术</option>
						</select>
					</div>
					
					<div class="small-12 column">
						<label for="albumPermission">访问权限</label> 
						<select id="albumPermission" name="albumPermission" required class="getinfo">
							<option value="">请选择</option>
							<option value="1">对所有人可见</option>
							<option value="2">仅博友</option>
							<option value="3">仅自己</option>
						</select>
					</div>
					
					<div class="small-12 column">
						<label for="albumDescription">请输入相册描述</label> 
						<textarea class="getinfo" id="albumDescription" name="albumDescription"></textarea>
					</div>	
					
					<div class="small-12 medium-6 column">
						<button type="button" class="expanded large button home-form-submit-button" onclick="save()">
						确定
						</button>
					</div>
					<div class="small-12 medium-6 column">
						<button type="button" class="expanded large button alert" onclick="cancel()">
						取消
						</button>
					</div>	
				</div>
				
			</form>
		</div>
	</div>
</section>
	


</body>
</html>