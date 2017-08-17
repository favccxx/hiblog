package com.favccxx.favsoft.dao;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.favccxx.favsoft.model.SysUser;

@Repository
public class SysUserDao extends MongoDao<SysUser> {
	
	public SysUser login(String username, String password){
		
		Query query = new Query();
		Criteria criteria = new Criteria();
		criteria.and("userName").is(username).and("userPwd").is(password);		
		query.addCriteria(criteria);
		SysUser sysUser = this.mongoTemplate.findOne(query, this.getEntityClass());			
		return sysUser;
	}
	
	public SysUser findByUsername(String username){
		Query query = new Query();
		Criteria criteria = new Criteria();
		criteria.and("userName").is(username);		
		query.addCriteria(criteria);
		SysUser sysUser = this.mongoTemplate.findOne(query, this.getEntityClass());			
		return sysUser;
	}
	

	@Override
	protected Class<SysUser> getEntityClass() {
		return SysUser.class;
	}

	
}
