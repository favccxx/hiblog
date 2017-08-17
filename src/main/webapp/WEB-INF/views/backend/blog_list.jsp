<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/commonInclude.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客管理</title>
<link rel="stylesheet" href="<%=basePath %>assets/css/foundation.min.css">
<link rel="stylesheet" href="<%=basePath %>assets/css/responsive-tables.css">

<script src="<%=basePath %>assets/js/jquery-2.1.4.min.js"></script>
<script src="<%=basePath %>assets/js/responsive-tables.js"></script>
</head>

  <body>
    
    <div class="off-canvas-wrapper">
      <div class="off-canvas-wrapper-inner" data-off-canvas-wrapper>

        <div class="off-canvas position-left reveal-for-large" id="my-info" data-off-canvas data-position="left">
          <div class="row column" style="text-align:center;">
            <br>
            <img class="thumbnail" src="<%=basePath %>assets\images\theme\my.jpg" style="height:130px;text-align:center;">
            <h5>嗨客管理</h5>
           
          	<p>
          		<a class="button expanded" href="#">发表博文</a>
				<a class="button expanded" href="#">管理博文</a>
				<a class="button expanded" href="#">相册管理</a>
				<a class="button expanded" href="#">评论管理</a>
				<a class="button expanded" href="#">用户管理</a>
				<a class="button small expanded" href="#">帮助中心</a>
          	</p>
          </div>
        </div>

        <div class="off-canvas-content" data-off-canvas-content>
          <div class="title-bar hide-for-large">
            <div class="title-bar-left">
              <button class="menu-icon" type="button" data-open="my-info"></button>
              <span class="title-bar-title">Mike Mikerson</span>
            </div>
          </div>
          <div class="callout primary" style="background-color:#ffffff;">
            <div class="row column">
              <h1>我有一个博客，叫嗨客的世界。</h1>
              <p class="lead">我在2016年03月24日建立了它，截止到目前，我发表了244篇文章，有307条评论，有415,426人访问过它。我还将继续记录着“与嗨客共享精彩”。</p>
            </div>
          </div>
          <div class="row column">
          
          	<h5>日志管理</h5>
          	<div>
				<button class="button">编辑</button>
				<button class="button">删除</button>
          	</div>
			<table class="responsive" style="width:100%;">
				<tbody>
					<tr>
						<th>序号</th>
						<th>标题</th>
						<th>类型</th>
						<th>分类</th>
						<th>发表日期</th>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="#">BIRT部署在Tomcat解决方案</a></td>
						<td>原创</td>
						<td><a href="#">报表管理</a></td>
						<td>2017-07-07 15:52:21</td>						
					</tr>
					<tr>
						<td>2</td>
						<td><a href="#">RequireJS 快速上手</a></td>
						<td>原创</td>
						<td><a href="#">RequireJS</a></td>
						<td>2017-07-06 10:22:28</td>	
					</tr>
					<tr>
						<td>3</td>
						<td><a href="#">XStream处理重复的或循环引用</a></td>
						<td>原创</td>
						<td><a href="#">JAVA</a></td>
						<td>2017-07-05 09:47:31</td>	
					</tr>
					<tr>
						<td>4</td>
						<td><a href="#">详解摘要认证</a></td>
						<td>原创</td>
						<td><a href="#">JAVA</a></td>
						<td>2017-07-04 18:51:21</td>	
					</tr>
					<tr>
						<td>5</td>
						<td><a href="#">Httpclient处理摘要认证</a></td>
						<td>原创</td>
						<td><a href="#">JAVA</a></td>
						<td>2017-07-03 10:21:10</td>	
					</tr>
				</tbody>
			</table>
           
          </div>

          <hr>

          
        </div>
      </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="http://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>