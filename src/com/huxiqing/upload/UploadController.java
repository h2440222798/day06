package com.huxiqing.upload;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sun.security.mscapi.PRNG;

@Controller
public class UploadController {
	@RequestMapping(value = "/upload.do" ,method=RequestMethod.POST)
	public String upload(@RequestParam MultipartFile upfile ,@RequestParam("value") String type,@RequestParam("hi") String type2,Model model){
		//
		System.out.println(type);
		//
		String ss = (String)upfile.getName();
		
		System.out.println(type2);
		
		model.addAttribute("type",type2);
		
		String fName = upfile.getOriginalFilename();
		
		//
		String path = "D:/upload";
		File file = new File(path);
		//
		if(!file.exists()){
			file.mkdir();
		}
		
		File f = new File(path, fName);
		
		try {
			//
			upfile.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "index";
	}

}
