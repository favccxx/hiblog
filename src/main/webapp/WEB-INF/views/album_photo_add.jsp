<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传照片</title>
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
				<div class="primary">
					<div class="row column">
						<h1 class="homepage-section-title hide-me">
							 <a class="hyperlink" href="http://zurb.com/university/courses">上 传 照 片</a> 
						</h1>
						
						<form action="<%=basePath%>upload" method="post" enctype="multipart/form-data">
							<div class="row">
								<div class="row collapse prefix-radius">
									<div class="small-3 columns">
										<span class="prefix">选择相册</span>
									</div>
									<div class="small-9 columns">
										<select id="albumId" name="albumId" required class="getinfo">
											<option value="">请选择</option>
											<c:forEach var="albumItem" items="${albumList }">
												<option value="${albumItem.albumId }">${albumItem.albumName }</option>	
											</c:forEach>																					
										</select>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="medium-10 columns">
									<div class="row">
										<div class="medium-2 columns">
											<input type="file" name="uploadFile" />
										
											<!-- <button type="button" class="expanded small button home-form-submit-button" onclick="save()">
											添加照片
											</button> -->
										</div>
										<div class="medium-2 columns">
											<button type="submit" class="expanded small button alert" onclick="cancel()">
											开始上传
											</button>
										</div>
										<div class="medium-8 columns">
										</div>
									</div>
									<div class="row" style="height:400px;border:1px solid black;">
									
									</div>
								</div>
								<div class="medium-2 columns">
									<ul style="margin-left:5px;">
										<li>支持jpg/gif/png/bmp格式</li>
										<li>单张相片大小不超过20M</li>
										<li>每次最多上传120张</li>
									</ul>
								</div>
							
							
							
							
								
							</div>
						
							
						</form>
						
						
						
						
						
						
						
						
					
						
					</div>
				</div>
				
			</div>
		</div>
	</div>


	


</body>
</html>