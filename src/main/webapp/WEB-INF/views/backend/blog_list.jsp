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
    
    
    <div class="large-3 columns">
		<%@ include file="../common/nav.jsp"%>
	</div>
		
	<div class="large-9 columns">
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
   	</div>
   
    <script>
      $(document).foundation();
    </script>
  </body>
</html>