<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/commonInclude.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=basePath%>assets/plugins/ckeditor/ckeditor.js"></script>
</head>
<body>
<div class="addBlog">
		<div class="addBlog_area">
			<div class="addBlog_header">
				<div class="publish-label">
					发表魔文
				</div>
			</div>
			
			<div class="addBlog-content">
					<form id="addPost" name="addPost" action="saveBlog" method="post">
						<div class="addBlogItem">
							<div class="addBlogItemTitle">标题：</div>
							<div class="addBlogItemInput">
								<select id="postType" name="postTypeName"
									class="validate[required] input-small"
									style="display: inline-block;">
									<option value="">请选择</option>
									<option value="Origin">原创</option>
									<option value="Forward">转载</option>
									<option value="Translation">译文</option>
								</select> &nbsp;&nbsp; <input type="text" name="postTitle"
									class="input-xlarge" value="">
							</div>
						</div>
						<div class="addBlogItem">
							<textarea class="ckeditor" cols="80" id="postContent"
								name="postContent" rows="30">
							${postContent }
						</textarea>
						</div>
						<div class="addBlogItem">
							<div class="addBlogItemTitle">标签：</div>
							<div class="addBlogItemInput">
								<input type="text" name="postTags" value=""
									class="input-xxlarge">
							</div>
						</div>
						<div class="addBlogItem">
							<div class="addBlogItemTitle">文章分类：</div>
							<div class="addBlogItemInput">
								<select id="categoryId" name="categoryId"
									class="validate[required] input-xlarge">
									<option value="">请选择</option>
									<c:forEach var="categoryItem" varStatus="categoryStatus"
										items="${categoryList }">
										<option value="${categoryItem.categoryId }">${categoryItem.categoryName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="addBlogItem">
							<div class="addBlogItemTitle">版权说明：</div>
							<div class="addBlogItemInput">
								<select id="customAppKey" name="copyRight"
									class="validate[required] input-xlarge">
									<option value="">请选择</option>
									<option value="0">转载请注明出处</option>
									<option value="1">转载需作者授权</option>
									<option value="2">谢绝转载</option>
								</select>
							</div>
						</div>
						<div class="publish-buttons">
							<input type="submit" class="btnMain" value="发布" /> 
								<input type="button" class="btn" onclick="addDraft(1)" value="保存草稿" />
						</div>
					</form>
				</div>
		</div>
		
	</div>
</body>
</html>