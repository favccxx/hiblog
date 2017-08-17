package com.favccxx.favsoft.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/backend")
public class UserManagerController {

	@RequestMapping("/userlist")
	public ModelAndView userList(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/backend/user_list");
		return mav;
	}
	
	
}
