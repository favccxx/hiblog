package com.favccxx.favsoft.dao;

import org.springframework.stereotype.Repository;

import com.favccxx.favsoft.model.SysRole;

@Repository
public class SysRoleDao extends MongoDao<SysRole> {

	@Override
	protected Class<SysRole> getEntityClass() {
		return SysRole.class;
	}

}
