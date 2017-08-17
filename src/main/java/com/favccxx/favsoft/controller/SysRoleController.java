package com.favccxx.favsoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.favccxx.favsoft.dao.SysRoleDao;
import com.favccxx.favsoft.model.SysRole;

@RestController
public class SysRoleController {
	
	@Autowired
	SysRoleDao sysRoleDao;
	
	@RequestMapping("/saveRole")
	public String saveRole(){
		SysRole sysRole = new SysRole();
		sysRole.setRoleName("administrator");
		sysRole.setRoleDescription("管理员");
		sysRoleDao.save(sysRole);
		
//		sysRole.setRoleName("user");
//		sysRole.setRoleDescription("普通用户");
//		sysRoleDao.save(sysRole);
		
		return "";
	}

}
