package com.favccxx.favsoft.dao;

import org.springframework.stereotype.Repository;

import com.favccxx.favsoft.model.BlogPost;

@Repository
public class BlogPostDao extends MongoDao<BlogPost> {

	@Override
	protected Class<BlogPost> getEntityClass() {
		return BlogPost.class;
	}

}
