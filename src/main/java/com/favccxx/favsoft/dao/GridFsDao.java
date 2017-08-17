package com.favccxx.favsoft.dao;

import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.gridfs.GridFsOperations;
import org.springframework.stereotype.Repository;

import com.mongodb.DBObject;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSFile;

@Repository
public class GridFsDao {

	@Autowired
	GridFsOperations operations;

	/**
	 * 存储文件到Gridfs
	 * @param content 文件流	
	 * @param metadata 文件元数据
	 * @return 
	 */
	public GridFSFile store(InputStream content, DBObject metadata) {
		return operations.store(content, metadata);
	}

	/**
	 * 存储文件到Gridfs
	 * @param content 文件流
	 * @param filename 文件名称
	 * @param contentType 文件类型
	 * @return
	 */
	public GridFSFile store(InputStream content, String filename, String contentType) {
		return operations.store(content, filename, contentType);
	}

	/**
	 * 存储文件到Gridfs
	 * @param content 文件流
	 * @param filename 文件名称
	 * @param contentType 文件类型
	 * @param metadata 文件元数据
	 * @return
	 */
	public GridFSFile store(InputStream content, String filename, String contentType, DBObject metadata) {
		return operations.store(content, filename, contentType, metadata);
	}

	/**
	 * 根据文件Id查询文件
	 * @param fileId 文件id
	 * @return
	 */
	public GridFSDBFile findFile(String fileId) {
		return operations.findOne(Query.query(Criteria.where("_id").is(fileId)));
	}
	
	/**
	 * 查询文件列表
	 * @param query 查询Query
	 * @return
	 */
	public List<GridFSDBFile> find(Query query){
		return operations.find(query);
	}
	
	/**
	 * 根据文件Id删除文件
	 * @param fileId
	 */
	public void removeFile(String fileId)  {
		operations.delete(Query.query(Criteria.where("_id").is(fileId)));
	}

}
