package com.favccxx.favsoft.dao;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.favccxx.favsoft.model.BlogCategory;

@Repository
public class BlogCategoryDao extends MongoDao<BlogCategory> {

	@Override
	protected Class<BlogCategory> getEntityClass() {
		return BlogCategory.class;
	}
	
	/**
	 * 添加新分类
	 */
	public void save(BlogCategory catalog) {		
		Query query = new Query();
		Sort sort = new Sort(Direction.DESC, "displayOrder");
		query.with(sort);
		
		BlogCategory maxCatalog = mongoTemplate.findOne(query, this.getEntityClass());
		if(maxCatalog==null || maxCatalog.getDisplayOrder()==0) {
			catalog.setDisplayOrder(1);
		}else {
			catalog.setDisplayOrder(maxCatalog.getDisplayOrder()+1);
		}
		mongoTemplate.save(catalog);
	}

	/**
	 * 根据用户名查询用户博文分类
	 * @param username 用户名
	 * @return
	 */
	public List<BlogCategory> getListByUsername(String username) {

		Query query = new Query();
		Criteria criteria = Criteria.where("userName").is(username);
		query.addCriteria(criteria);

		return mongoTemplate.find(query, this.getEntityClass());
	}

}
