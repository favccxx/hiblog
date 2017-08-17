package com.favccxx.favsoft.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.favccxx.favsoft.constants.SysConstants;
import com.favccxx.favsoft.dao.GridFsDao;
import com.favccxx.favsoft.dao.SysAlbumDao;
import com.favccxx.favsoft.model.SysAlbum;
import com.favccxx.favsoft.model.SysPhotos;
import com.favccxx.favsoft.model.SysUser;
import com.favccxx.favsoft.util.BeanUtil;
import com.mongodb.gridfs.GridFSFile;

@Controller
public class UploadController {
	
	@Autowired
	SysAlbumDao sysAlbumDao;
	@Autowired
	GridFsDao gridFsDao;

	
	@RequestMapping("/upload")
	@ResponseBody
	public String upload(@RequestParam MultipartFile[] uploadFile, String albumId, HttpSession session){
		SysUser sysUser = (SysUser)session.getAttribute(SysConstants.USER_SESSION_KEY);
		
		for(MultipartFile file : uploadFile){
			if(file.getSize()>0){
				String filename = file.getOriginalFilename();
				String contentType = file.getContentType();
				
				//设置照片属性
				SysPhotos sysPhoto = new SysPhotos();
				sysPhoto.setAlbumId(albumId);
				sysPhoto.setCreateTime(new Date());
				sysPhoto.setPhotoPermission("PUBLIC");
				sysPhoto.setPhotoName(filename);
				sysPhoto.setUserId(sysUser.getUserId());
				sysPhoto.setUserName(sysUser.getUserName());
				
				try {
					GridFSFile gridFs = gridFsDao.store(file.getInputStream(), filename, contentType, BeanUtil.bean2DBObject(sysPhoto));
										
					//将相册的第一张照片设置为默认照片
					SysAlbum sysAlbum = sysAlbumDao.findById(albumId);
					if(sysAlbum!=null && sysAlbum.getDefaultImage()==null){
						sysAlbum.setDefaultImage(gridFs.getId().toString());
						sysAlbumDao.save(sysAlbum);
					}
					
				} catch (IllegalArgumentException e) {					
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return "";
	}
}
