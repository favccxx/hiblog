package com.favccxx.favsoft.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.favccxx.favsoft.constants.SysConstants;
import com.favccxx.favsoft.model.SysUser;

@Controller
public class IndexController {

	@RequestMapping(value={"/","/index"})
	public ModelAndView index(HttpSession session){
		ModelAndView mav = new ModelAndView();
		SysUser sysUser = (SysUser)session.getAttribute(SysConstants.USER_SESSION_KEY);
		if(sysUser!=null){
			mav.addObject(SysConstants.USER_LOGIN_KEY, sysUser);
		}
		mav.setViewName("/index");
		return mav;
	}
}
