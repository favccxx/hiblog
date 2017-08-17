package com.favccxx.favsoft.model;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "blog_post")
public class BlogPost {

	@Id
	private String postId;
	private String postTitle;
	private String postSubTitle;
	private String postContent;
	private String categoryId;
	private String categoryName;
	/**
	 * 原创/转载/翻译
	 */
	private String postTypeName;
	private String sysCategoryId;
	private String sysCategoryName;
	private String postTags;
	private String postStar;
	private String postStatus;
	private String copyRight;
	private String isTop;
	private Date publishTime;
	private String userId;
	private String userName;
	private Date updateTime;
	private String publicStatus;
	private int agree;
	private int disagree;
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostSubTitle() {
		return postSubTitle;
	}
	public void setPostSubTitle(String postSubTitle) {
		this.postSubTitle = postSubTitle;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getPostTypeName() {
		return postTypeName;
	}
	public void setPostTypeName(String postTypeName) {
		this.postTypeName = postTypeName;
	}
	public String getSysCategoryId() {
		return sysCategoryId;
	}
	public void setSysCategoryId(String sysCategoryId) {
		this.sysCategoryId = sysCategoryId;
	}
	public String getSysCategoryName() {
		return sysCategoryName;
	}
	public void setSysCategoryName(String sysCategoryName) {
		this.sysCategoryName = sysCategoryName;
	}
	public String getPostTags() {
		return postTags;
	}
	public void setPostTags(String postTags) {
		this.postTags = postTags;
	}
	public String getPostStar() {
		return postStar;
	}
	public void setPostStar(String postStar) {
		this.postStar = postStar;
	}
	public String getPostStatus() {
		return postStatus;
	}
	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}
	public String getCopyRight() {
		return copyRight;
	}
	public void setCopyRight(String copyRight) {
		this.copyRight = copyRight;
	}
	public String getIsTop() {
		return isTop;
	}
	public void setIsTop(String isTop) {
		this.isTop = isTop;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getPublicStatus() {
		return publicStatus;
	}
	public void setPublicStatus(String publicStatus) {
		this.publicStatus = publicStatus;
	}
	public int getAgree() {
		return agree;
	}
	public void setAgree(int agree) {
		this.agree = agree;
	}
	public int getDisagree() {
		return disagree;
	}
	public void setDisagree(int disagree) {
		this.disagree = disagree;
	}
	
	

}
