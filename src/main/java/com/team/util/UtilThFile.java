package com.team.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UtilThFile {
	public String thfileUpload(MultipartHttpServletRequest request) {
		String path = "C:/Users/unhot/git/5th-Project/src/main/webapp/resources/img/";
		String fileName = "";
		String str = null;
		String resultfirst = null;
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

				String strfirst = result.get(0).toString();
				resultfirst = strfirst.substring(strfirst.lastIndexOf("webapp/") + 7);
				System.out.println("배열결과:"+strfirst);
				System.out.println("결과:"+resultfirst);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println("최종:"+resultfirst);
		return resultfirst;
	}
}
