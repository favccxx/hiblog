package com.favccxx.favsoft.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.favccxx.favsoft.dao.GridFsDao;
import com.mongodb.gridfs.GridFSDBFile;

@Controller
public class ImageDetailController {
	
	@Autowired
	GridFsDao gridFsDao;

	@RequestMapping("/image/{imageId}")
	public void imageDetail(HttpServletResponse response, @PathVariable("imageId") String imageId) throws IOException{
		
		GridFSDBFile  file = gridFsDao.findFile(imageId);
		
		         
         if (file != null) {           
             OutputStream out = response.getOutputStream();    
             response.setContentType("application/octet-stream");  
             // 获取原文件名  
//             String name = file.getFilename();
             String fileName =  file.getFilename();          
             // 设置下载文件名  
             response.addHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");   
             // 向客户端输出文件  
             file.writeTo(out);
             out.flush();  
             out.close();  
         }  
		
		
	}
}
