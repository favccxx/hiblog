<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/assets/css/header.css" />
<div class="top"> 
  <div class="logo fl"><a href="#"><img src="../assets/images/common/logo.png" style="width:415px;height:43px;"/></a></div>
  <div class="search_box fr">
  <form id="searchForm" name="search" action="./search/toSearch.action" method="post">
    <div class="search fl">
      <input type="text" name="searchLabel" placeholder="请输入您要搜索的关键字" onfocus="if(this.value=='请输入您要搜索的关键字')this.value=''" onblur="if(this.value=='')this.value='请输入您要搜索的关键字'" />
      <input type="button" onclick="document.search.submit()"/>
    </div>
    </form>
  </div>
</div>