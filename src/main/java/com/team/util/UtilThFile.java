package com.team.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UtilThFile {
	 public String thfileUpload(MultipartHttpServletRequest request, MultipartFile uploadFile) {
	        String path = "";
	        String fileName = "";
	        
	        String str=null;
	        
	        OutputStream out = null;
	        PrintWriter printWriter = null;

	        try {
	            fileName = uploadFile.getOriginalFilename();
	            byte[] bytes = uploadFile.getBytes();
	            path  ="C:/Users/user/git/5th-Project/src/main/webapp/resources/img/outer/coat/";

	            File file = new File(path);

	            // 파일명이 중복체크
	            if (fileName != null && !fileName.equals("")) {
	                if (file.exists()) {
	            // 파일명 앞에 구분(예)업로드 시간 초 단위)을 주어 파일명 중복을 방지한다.
	                fileName = System.currentTimeMillis() + "_" + fileName;
	                file = new File(path + fileName);
	                }
	            }
	            out = new FileOutputStream(file);

	            out.write(bytes);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (out != null) {
	                    out.close();
	                }
	                if (printWriter != null) {
	                    printWriter.close();
	                }
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        str=path+fileName;
	        
	        String result= str.substring(str.lastIndexOf("webapp/")+7);
	        
	        return result;
	    }
}
