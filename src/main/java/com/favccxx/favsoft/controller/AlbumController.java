package com.favccxx.favsoft.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.favccxx.favsoft.constants.SysConstants;
import com.favccxx.favsoft.dao.GridFsDao;
import com.favccxx.favsoft.dao.SysAlbumDao;
import com.favccxx.favsoft.model.SysAlbum;
import com.favccxx.favsoft.model.SysPhotos;
import com.favccxx.favsoft.model.SysUser;
import com.favccxx.favsoft.util.BeanUtil;
import com.mongodb.DBObject;
import com.mongodb.gridfs.GridFSDBFile;

@Controller
public class AlbumController {
	
	@Autowired
	SysAlbumDao sysAlbumDao;
	@Autowired
	GridFsDao gridFsDao;
	
	/**
	 * 查看用户素有相册
	 * @param session
	 * @param username
	 * @return
	 */
	@RequestMapping("/albums/{username}")
	public ModelAndView albums(HttpSession session, @PathVariable("username") String username){
		ModelAndView mav = new ModelAndView();		
		List<SysAlbum> list = sysAlbumDao.getAlbumsByUsername(username);
		mav.addObject("albumList", list);
		mav.setViewName("/albums");
		return mav;
	}
	
	/**
	 * 查看某相册的所有照片
	 * @param session
	 * @param albumId
	 * @return
	 */
	@RequestMapping("/album/{albumId}")
	public ModelAndView albumPhotos(HttpSession session, @PathVariable("albumId") String albumId){
		ModelAndView mav = new ModelAndView();		
		
		Query query = new Query();
		Criteria criteria = Criteria.where("metadata.albumId").is(albumId);
		query.addCriteria(criteria);
		
		List<GridFSDBFile> list = gridFsDao.find(query);
		mav.addObject("photoList", list);
		mav.setViewName("/album_photos");
		return mav;
	}
	
	/**
	 * 查看某个相册的照片
	 * @param session
	 * @param username
	 * @param albumId
	 * @return
	 */
	@RequestMapping("/albums/{username}/{albumId}")
	public ModelAndView albumPhotos(HttpSession session,
			@PathVariable("username") String username,
			@PathVariable("albumId") String albumId){
		
		ModelAndView mav = new ModelAndView();		
		List<SysAlbum> list = sysAlbumDao.getAlbumsByUsername(username);
		mav.addObject("albumList", list);
		mav.setViewName("/album_photos");
		return mav;
	}
	
	@RequestMapping("/albums/initAddAlbum")
	public ModelAndView initAddAlbum(HttpSession session){
		ModelAndView mav = new ModelAndView();				
		mav.setViewName("/album_add");
		return mav;
	}
	
	/**
	 * 初始化添加照片
	 * @param session
	 * @return
	 */
	@RequestMapping("/albums/initAddPhoto")
	public ModelAndView initAddPhoto(HttpSession session){
		ModelAndView mav = new ModelAndView();	
		SysUser sysUser = (SysUser)session.getAttribute(SysConstants.USER_SESSION_KEY);
		if(sysUser==null){
			mav.setViewName("redirect:/login");
			return mav;
		}
		
		//查询当前登录用户的相册分类
		List<SysAlbum> list = sysAlbumDao.getAlbumsByUsername(sysUser.getUserName());
		mav.addObject("albumList", list);
		mav.setViewName("/album_photo_add");
		return mav;
	}
	
	
	@RequestMapping(value="/albums/saveAlbum")
	public ModelAndView saveAlbum(HttpSession session, SysAlbum sysAlbum){
		SysUser sysUser = (SysUser)session.getAttribute(SysConstants.USER_SESSION_KEY);
		ModelAndView mav = new ModelAndView();		
		sysAlbum.setUserId(sysUser.getUserId());
		sysAlbum.setUserName(sysUser.getUserName());
		sysAlbum.setCreateTime(new Date());
		sysAlbum.setUpdateTime(new Date());
		sysAlbumDao.save(sysAlbum);
		mav.setViewName("redirect:/albums");
		return mav;
	}
	
	
	@RequestMapping(value="/addPhoto")
	@ResponseBody
	public String addPhoto(HttpSession session) throws FileNotFoundException, IllegalArgumentException, IllegalAccessException{
		SysPhotos sysPhoto = new SysPhotos();
//		sysPhoto.setAlbumId("");
		sysPhoto.setCreateTime(new Date());
		sysPhoto.setPhotoDescription("我的照片");
		sysPhoto.setPhotoPermission("PUBLIC");
		sysPhoto.setPhotoName("xxx");
		sysPhoto.setUserId("");
		sysPhoto.setUserName("admin");
		
	
		DBObject dbObject = BeanUtil.bean2DBObject(sysPhoto);
	
		InputStream content = new FileInputStream("C:\\Users\\Public\\Pictures\\Sample Pictures\\Tulips.jpg");
		gridFsDao.store(content, dbObject);
		
		return "";
	}
	

}
