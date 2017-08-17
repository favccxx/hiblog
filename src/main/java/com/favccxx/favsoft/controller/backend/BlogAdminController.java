package com.favccxx.favsoft.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/backend")
public class BlogAdminController {
	
	@RequestMapping("/blogadmin")
	public ModelAndView blog(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/backend/blogAdmin");
		return mav;
	}

	
	@RequestMapping("/bloglist")
	public ModelAndView bloglist(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/backend/blog_list");
		return mav;
	}


}
