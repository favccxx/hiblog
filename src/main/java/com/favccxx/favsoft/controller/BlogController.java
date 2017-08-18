package com.favccxx.favsoft.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.favccxx.favsoft.dao.BlogPostDao;
import com.favccxx.favsoft.model.BlogPost;

@Controller
public class BlogController {
	
	@Autowired
	BlogPostDao blogPostDao;
	
	@RequestMapping("/blog")
	public ModelAndView blog(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/blog");
		return mav;
	}
	
	@RequestMapping("/blog/{username}")
	public ModelAndView blog(HttpSession session, @PathVariable("username") String username){
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/blog");
		return mav;
	}
	
	
	@RequestMapping("/addblog")
	public ModelAndView addBlog(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/blog_add");
		return mav;
	}
	
	
	@RequestMapping("/saveBlog")
	public ModelAndView addBlog(BlogPost blogPost){
		ModelAndView mav = new ModelAndView();
		
		blogPost.setUpdateTime(new Date());
		
		
		blogPostDao.save(blogPost);
		mav.setViewName("/blog_add");
		return mav;
	}

}
