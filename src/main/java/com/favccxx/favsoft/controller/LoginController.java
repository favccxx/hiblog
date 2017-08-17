package com.favccxx.favsoft.controller;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.favccxx.favsoft.constants.SysConstants;
import com.favccxx.favsoft.dao.SysUserDao;
import com.favccxx.favsoft.model.SysUser;
import com.favccxx.favsoft.util.EncryptDesUtil;
import com.favccxx.favsoft.util.EncryptUtil;
import com.favccxx.favsoft.util.SaltUtil;

@Controller
public class LoginController {
	
	@Autowired
	SysUserDao sysUserDao;
	
	@RequestMapping("/login")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/login");
		return mav;
	}
	
	
	
	@RequestMapping("/randomSalt")
	@ResponseBody
	public String randomSalt(HttpSession session){
		String randomSalt = SaltUtil.getSalt();
		return randomSalt;
	}
	
	@RequestMapping("/userLogin")
	public ModelAndView userLogin(HttpSession session, String userName, String password) throws Exception{
		ModelAndView mav = new ModelAndView();
		
		SysUser sysUser = sysUserDao.findByUsername(userName);
		if(sysUser==null){
			mav.addObject("errorMsg", "用户名或密码错误！");
			mav.setViewName("/login");
			return mav;
		}
		
		String salt = (String) session.getAttribute(SysConstants.USER_SALT_KEY);		
		String originPass = EncryptDesUtil.decryption(password, salt);
		
		String loginPwd = EncryptUtil.encrypt(EncryptUtil.HASH_METHOD_SHA_256,(EncryptUtil.encrypt(EncryptUtil.HASH_METHOD_SHA_256, originPass) + sysUser.getSalt()));
		if(sysUser.getUserPwd().equals(loginPwd)){
			session.setAttribute(SysConstants.USER_SESSION_KEY, sysUser);
			mav.setViewName("redirect:/index");
		
			return mav;
		}else{
			mav.addObject("errorMsg", "用户名或密码错误！");
			mav.setViewName("/login");
			return mav;
		}
	}
	


}
