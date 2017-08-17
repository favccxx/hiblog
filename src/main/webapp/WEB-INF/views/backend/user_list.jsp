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
<link rel="stylesheet" href="<%=basePath%>assets/css/foundation-icons.css">

<script src="<%=basePath %>assets/js/jquery-2.1.4.min.js"></script>
<script src="<%=basePath %>assets/js/responsive-tables.js"></script>
</head>

  <body>
     <%@ include file="../common/blackbar.jsp"%>
     
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
              <h3>我有一个博客，叫嗨客的世界。</h3>
              <p class="lead">我在2016年03月24日建立了它，截止到目前，我发表了244篇文章，有307条评论，有415,426人访问过它。我还将继续记录着“与嗨客共享精彩”。</p>
            </div>
          </div>
          <div class="row column">
          
          	<h5>用户管理</h5>
          	<div>
          		<button class="button">添加</button>
				<button class="button">编辑</button>
				<button class="button">删除</button>
				<button class="button">禁言</button>
				<button class="button">解禁</button>
          	</div>
			<table class="responsive">
				<tbody>
					<tr>
						<th>序号</th>
						<th>用户名</th>
						<th>昵称</th>
						<th>邮箱</th>
						<th>电话</th>
						<th>状态</th>
						<th>角色</th>
						<th>更新时间</th>
					</tr>
					<tr>
						<td>1</td>
						<td>hiblog</td>
						<td>嗨客</td>
						<td>hiblog@163.com</td>
						<td>13411012211</td>
						<td>正常</td>
						<td>管理员</td>
						<td>2017-01-10 09:41:01</td>
					</tr>
					<tr>
						<td>2</td>
						<td>admin</td>
						<td>管理员</td>
						<td>admin@163.com</td>
						<td>13411012222</td>
						<td>正常</td>
						<td>管理员</td>
						<td>2017-01-11 10:02:40</td>
					</tr>
					<tr>
						<td>3</td>
						<td>root</td>
						<td>root</td>
						<td>root@163.com</td>
						<td>13411012233</td>
						<td>正常</td>
						<td>普通用户</td>
						<td>2017-01-12 10:26:24</td>
					</tr>
					<tr>
						<td>4</td>
						<td>zhangsan</td>
						<td>张三</td>
						<td>zhangsan@163.com</td>
						<td>13411012244</td>
						<td>正常</td>
						<td>普通用户</td>
						<td>2017-01-12 11:25:52</td>
					</tr>
					<tr>
						<td>5</td>
						<td>lisi</td>
						<td>李四</td>
						<td>lisi@163.com</td>
						<td>13411012255</td>
						<td>正常</td>
						<td>普通用户</td>
						<td>2017-01-12 11:28:00</td>
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