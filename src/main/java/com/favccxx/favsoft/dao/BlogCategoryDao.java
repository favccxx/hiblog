package com.favccxx.favsoft.dao;

import org.springframework.stereotype.Repository;

import com.favccxx.favsoft.model.BlogCategory;

@Repository
public class BlogCategoryDao extends MongoDao<BlogCategory> {

	@Override
	protected Class<BlogCategory> getEntityClass() {
		return BlogCategory.class;
	}

}
