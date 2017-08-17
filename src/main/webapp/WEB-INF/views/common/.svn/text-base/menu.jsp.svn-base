<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ include file="commonInclude.jsp"%>    --%>
<div class="nav_box" id="nav_box_id">
  <div class="nav fl">
    <ul id="headerNav">
      <li><a href="./navigation/initIndex" name="index">首页</a></li>
      <li><a href="./blog" name="ehr">博客</a></li>
      <li><a href="./initFavAlbum" name="app">相册</a></li>
      <li><a href="http://10.0.10.5/bbs/forum.php" name="bbs">关于</a></li>
   	  <c:forEach var="categoryItem" varStatus="categoryStatus" items="${categoryList }">
    	 <li><a href="#" name="bbs">${categoryItem.categoryName }</a></li>
			
	  </c:forEach>
    </ul>
  </div>
  <div class="user_box fl">
  	<ul id="headerNav">
      <li name="sysMsg"><a href="./blogConfig" class="mess" id="msgNum" >魔客配置</a></li>
      <li name="myPtl"><a href="./publishBlog" class="user">发表魔文</a></li>
    </ul>
  </div>
</div>