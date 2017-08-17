package com.favccxx.favsoft.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

public abstract class MongoDao<T> {

	@Autowired
	protected MongoTemplate mongoTemplate;

	public void setMongoTemplate(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}

	/**
	 * 保存对象
	 * 
	 * @param t
	 */
	public void save(T t) {
		this.mongoTemplate.save(t);
	}

	public T queryById(String id) {
		Query query = new Query();
		Criteria criteria = Criteria.where("_id").is(id);
		query.addCriteria(criteria);
		
		return this.mongoTemplate.findOne(query, this.getEntityClass());
	}
	
	protected abstract Class<T> getEntityClass();

}
