package com.favccxx.favsoft.dao;

import java.util.List;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.favccxx.favsoft.model.SysAlbum;

@Repository
public class SysAlbumDao extends MongoDao<SysAlbum> {
	
	public List<SysAlbum> getAlbumsByUsername(String username){
		
		Query query = new Query();
		Criteria criteria = Criteria.where("userName").is(username);
		query.addCriteria(criteria);
		
		return mongoTemplate.find(query, this.getEntityClass());
	}
	
	/**
	 * 根据相册id查询相册信息
	 * @param albumId 相册id
	 * @return
	 */
	public SysAlbum findById(String albumId){
		Query query = new Query();
		Criteria criteria = Criteria.where("albumId").is(albumId);
		query.addCriteria(criteria);
		SysAlbum sysAlbum = mongoTemplate.findOne(query, SysAlbum.class);
		return sysAlbum;
	}
	
	
	

	@Override
	protected Class<SysAlbum> getEntityClass() {
		return SysAlbum.class;
	}

}
