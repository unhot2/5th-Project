package com.team.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UtilFile {
    public String fileUpload(MultipartHttpServletRequest request) {
    	String path = "C:/Users/unhot/git/5th-Project/src/main/webapp/resources/img/";
		String fileName = "";
		String str = null;
		String resultsecond = null;
		List result = new ArrayList();
		
		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdir();
		}

		Iterator<String> files = request.getFileNames();
		for(int i=0; i<2; i++) {
			String uploadFile = files.next();

			MultipartFile mFile = request.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();
			try {
				str = path + fileName;
				mFile.transferTo(new File(str));
				
				result.add(i, str);

				String strsecond = result.get(1).toString();
				resultsecond = strsecond.substring(strsecond.lastIndexOf("webapp/") + 7);
				System.out.println("배열결과:"+strsecond);
				System.out.println("결과:"+resultsecond);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println("최종:"+resultsecond);
		return resultsecond;
    } 
}