<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>嗨客相册</title>
<link rel="stylesheet" href="<%=basePath%>assets/css/foundation.min.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/foundation-icons.css">
</head>
<body>

	<!-- Start Top Bar -->
	<div class="top-bar">
		<div class="top-bar-left">
			<ul class="menu">
				<li class="menu-text">Hi Blog</li>
			</ul>
		</div>
		<div class="top-bar-right">
			<ul class="menu">
				<li><a href="#">superStar</a></li>
				<!-- <li><a href="#">注册</a></li> -->
				<li><a href="#">收藏</a></li>
				<!-- <li><a href="#">Four</a></li> -->
			</ul>
		</div>
	</div>
	<!-- End Top Bar -->

	

	<div class="off-canvas-wrapper">
		<div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

			<div class="off-canvas-content" data-off-canvas-content>				
				<div class="callout primary">
					<div class="row column">
						<h1>嗨! 这是一款记录嗨生活的智能相册.</h1>
						<p class="lead">记录你的故事，晒出你的生活，梳理你的工作，记住你的所有快乐。</p>
						<p>
							让生活与你再次相遇
						</p>
							
						

					</div>
				</div>
				
				
				<div class="row">
					<div class="small-2 columns">
    					<button type="button" class="expanded samll button home-form-submit-button" onclick="uploadPhoto()">
						上传照片
						</button>
 					</div>
 					<div class="small-2 columns">
 						<button type="button" class="expanded samll button home-form-submit-button" onclick="addAlbum()">
						创建相册
						</button>
 					</div>
					<div class="small-8 columns">
					
					</div>
				
					
				</div>
				
				
				
				<div class="row small-up-2 medium-up-3 large-up-4">
					<c:forEach var="albumItem" items="${albumList }">
						<div class="column">
							<img class="thumbnail" src="<%=basePath%>image/${albumItem.defaultImage }" onerror="" src="http://placehold.it/550x550" onclick="goAlbumPhotos('${albumItem.albumId}')">
							<h5>${albumItem.albumName }</h5>
						</div>														
					</c:forEach>
				</div>

				<hr>

				
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script
		src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
	<script>
		$(document).foundation();
		
		function addAlbum(){
			window.open("initAddAlbum", "_self");
		}
		
		function uploadPhoto(){
			window.open("initAddPhoto");
		}
		
		function goAlbumPhotos(albumId){
			window.open("<%=basePath%>album/" + albumId, "_self");
		}
	</script>
</body>
</html>