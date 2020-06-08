package com.team.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.util.UtilFile;

@Controller
public class RewardController {
	// 파일을 업로드하는 컨트롤러 클래스 메소드
    @RequestMapping(value = "re/add", method = RequestMethod.POST)
    // 인자로 MulfiPartFile 객체,
    //MultipartHttpServletRequest 객체, 업로드 하려는 도메인 클래스를 받는다

    public String reAddProCtrl(@RequestParam("uploadFile")MultipartHttpServletRequest request) {
    //UtilFile 객체 생성
    UtilFile utilFile = new UtilFile();
    //파일 업로드 결과값을 path로 받아온다
    String uploadPath=utilFile.fileUpload(request);
     return "isg/Boardlist";
    }
}