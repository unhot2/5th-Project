package com.team.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Iterator;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UtilThFile {
	public String thfileUpload(MultipartHttpServletRequest request) {
		String path = "C:/Users/eunji/git/5th-Project/src/main/webapp/resources/img/acc/hat/";
		String fileName = "";
		String str1 = null;
		String resultth = null;
		
		File dir = new File(path);
		if (!dir.isDirectory()) {
			dir.mkdir();
		}

		Iterator<String> files = request.getFileNames();
		while (files.hasNext()) {
			String uploadFile = files.next();

			MultipartFile mFile = request.getFile(uploadFile);
			fileName = mFile.getOriginalFilename();
			try {
				str1 = path + fileName;
				mFile.transferTo(new File(str1));
				String [] totalStr = new String [2];
				for(int i=0; i<2; i++) {
					totalStr[i] = str1;
				}
				resultth = totalStr[0].substring(totalStr[0].lastIndexOf("webapp/") + 7);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return resultth;
	}
}
