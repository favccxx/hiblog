package com.favccxx.favsoft.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.favccxx.favsoft.constants.SysConstants;
import com.favccxx.favsoft.dao.SysUserDao;
import com.favccxx.favsoft.model.SysUser;
import com.favccxx.favsoft.util.DateUtil;
import com.favccxx.favsoft.util.EncryptDesUtil;
import com.favccxx.favsoft.util.EncryptUtil;

@RestController
public class UserController {
	
	@Autowired
	SysUserDao sysUserDao;
	
	@RequestMapping("/register")
	public ModelAndView register(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/register");
		return mav;
	}
	
	/**
	 * 用户注册
	 * @param session 会话session
	 * @param sysUser 注册用户对象
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/userRegister")
	public ModelAndView userRegister(HttpSession session, SysUser sysUser) throws Exception{
		ModelAndView mav = new ModelAndView();
		String salt =  (String) session.getAttribute(SysConstants.USER_SALT_KEY);
		String originPass = EncryptDesUtil.decryption(sysUser.getUserPwd(), salt);
		System.out.println(originPass);
		
		String encryptPass = EncryptUtil.encrypt(EncryptUtil.HASH_METHOD_SHA_256,(EncryptUtil.encrypt(EncryptUtil.HASH_METHOD_SHA_256, originPass) + salt));
		sysUser.setSalt(salt);
		sysUser.setUserPwd(encryptPass);
		sysUserDao.save(sysUser);	
				
		mav.setViewName("/index");
		
		return mav;
	}
	

	
//	@RequestMapping("/register")
//	public String register() throws Exception{
//		SysUser sysUser = new SysUser();
//		sysUser.setUserName("admin");
//		sysUser.setNickName("admin");
//		sysUser.setUserPwd("admin");
//		sysUser.setRoleName("administrator");
//		sysUser.setBirthday(DateUtil.toDate("1986-12-10"));
//		sysUser.setCreateTime(new Date());
//		sysUser.setUpdateTime(new Date());
//		sysUser.setUserMail("admin@admin.com");
//		sysUser.setUserTel("18710058888");
//		sysUserDao.save(sysUser);
//		
//		
//		return "success";
//	}
}
