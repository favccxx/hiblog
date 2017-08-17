package com.favccxx.favsoft.model;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "sys_album")
public class SysAlbum {

	@Id
	private String albumId;
	private String albumName;
	
	private String albumDescription;
	private String albumTypeId;
	private String albumTypeName;
	private String albumPermission;
	private String userId;
	private String userName;
	private Date createTime;
	private Date updateTime;	
	private String defaultImage;
	
	public String getAlbumId() {
		return albumId;
	}
	public void setAlbumId(String albumId) {
		this.albumId = albumId;
	}
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	public String getAlbumDescription() {
		return albumDescription;
	}
	public void setAlbumDescription(String albumDescription) {
		this.albumDescription = albumDescription;
	}
	public String getAlbumTypeId() {
		return albumTypeId;
	}
	public void setAlbumTypeId(String albumTypeId) {
		this.albumTypeId = albumTypeId;
	}
	public String getAlbumTypeName() {
		return albumTypeName;
	}
	public void setAlbumTypeName(String albumTypeName) {
		this.albumTypeName = albumTypeName;
	}
	public String getAlbumPermission() {
		return albumPermission;
	}
	public void setAlbumPermission(String albumPermission) {
		this.albumPermission = albumPermission;
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
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getDefaultImage() {
		return defaultImage;
	}
	public void setDefaultImage(String defaultImage) {
		this.defaultImage = defaultImage;
	}
	
	
	
	

}
