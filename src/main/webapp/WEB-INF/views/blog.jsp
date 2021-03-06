<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>嗨客</title>
<title>博客管理</title>
<link rel="stylesheet" href="<%=basePath %>assets/css/foundation.min.css">
<link rel="stylesheet" href="<%=basePath %>assets/css/responsive-tables.css">
<link rel="stylesheet" href="<%=basePath%>assets/css/foundation-icons.css">

<script src="<%=basePath %>assets/js/jquery-2.1.4.min.js"></script>
<script src="<%=basePath %>assets/js/responsive-tables.js"></script>
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
				<li><a href="#">登录</a></li>
				<li><a href="#">注册</a></li>
				<li><a href="#">收藏</a></li>
				<li><a href="#">Four</a></li>
			</ul>
		</div>
	</div>
	<!-- End Top Bar -->

	<div class="callout large primary">
		<div class="row column text-center">
			<h1>Our Blog</h1>
		</div>
	</div>

	<div class="row" id="content">
		<div class="medium-8 columns">
			<div class="blog-post">
				<h3>
					Awesome blog post title <small>3/6/2015</small>
				</h3>
				<img class="thumbnail" src="http://placehold.it/850x350">
				<p>Praesent id metus massa, ut blandit odio. Proin quis tortor
					orci. Etiam at risus et justo dignissim congue. Donec congue
					lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu
					ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus
					eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla
					justo, eget luctus.</p>
				<div class="callout">
					<ul class="menu simple">
						<li><a href="#">Author: Mike Mikers</a></li>
						<li><a href="#">Comments: 3</a></li>
					</ul>
				</div>
			</div>

			<div class="blog-post">
				<h3>
					Awesome blog post title <small>3/6/2015</small>
				</h3>
				<img class="thumbnail" src="http://placehold.it/850x350">
				<p>Praesent id metus massa, ut blandit odio. Proin quis tortor
					orci. Etiam at risus et justo dignissim congue. Donec congue
					lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu
					ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus
					eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla
					justo, eget luctus.</p>
				<div class="callout">
					<ul class="menu simple">
						<li><a href="#">Author: Mike Mikers</a></li>
						<li><a href="#">Comments: 3</a></li>
					</ul>
				</div>
			</div>

			<div class="blog-post">
				<h3>
					Awesome blog post title <small>3/6/2015</small>
				</h3>
				<img class="thumbnail" src="http://placehold.it/850x350">
				<p>Praesent id metus massa, ut blandit odio. Proin quis tortor
					orci. Etiam at risus et justo dignissim congue. Donec congue
					lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu
					ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus
					eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla
					justo, eget luctus.</p>
				<div class="callout">
					<ul class="menu simple">
						<li><a href="#">Author: Mike Mikers</a></li>
						<li><a href="#">Comments: 3</a></li>
					</ul>
				</div>
			</div>

			<div class="blog-post">
				<h3>
					Awesome blog post title <small>3/6/2015</small>
				</h3>
				<img class="thumbnail" src="http://placehold.it/850x350">
				<p>Praesent id metus massa, ut blandit odio. Proin quis tortor
					orci. Etiam at risus et justo dignissim congue. Donec congue
					lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu
					ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus
					eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla
					justo, eget luctus.</p>
				<div class="callout">
					<ul class="menu simple">
						<li><a href="#">Author: Mike Mikers</a></li>
						<li><a href="#">Comments: 3</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="medium-3 columns" data-sticky-container>
			<div class="sticky" data-sticky data-anchor="content">
				<h4>Categories</h4>
				<ul>
					<li><a href="#">Skyler</a></li>
					<li><a href="#">Jesse</a></li>
					<li><a href="#">Mike</a></li>
					<li><a href="#">Holly</a></li>
				</ul>

				<h4>Authors</h4>
				<ul>
					<li><a href="#">Skyler</a></li>
					<li><a href="#">Jesse</a></li>
					<li><a href="#">Mike</a></li>
					<li><a href="#">Holly</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="row column">
		<ul class="pagination" role="navigation" aria-label="Pagination">
			<li class="disabled">Previous</li>
			<li class="current"><span class="show-for-sr">You're on
					page</span> 1</li>
			<li><a href="#" aria-label="Page 2">2</a></li>
			<li><a href="#" aria-label="Page 3">3</a></li>
			<li><a href="#" aria-label="Page 4">4</a></li>
			<li class="ellipsis"></li>
			<li><a href="#" aria-label="Page 12">12</a></li>
			<li><a href="#" aria-label="Page 13">13</a></li>
			<li><a href="#" aria-label="Next page">Next</a></li>
		</ul>
	</div>

	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script
		src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>