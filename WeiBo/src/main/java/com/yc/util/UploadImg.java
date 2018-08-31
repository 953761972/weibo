package com.yc.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class UploadImg {
	public static String uploadimg(MultipartFile contentimg,String realpath,Integer uid){
		if ("".equals(contentimg.getOriginalFilename()) || contentimg.getOriginalFilename() == null) {
			System.out.println("没有图片");
			return null;
		} else {
			// 有则上传
			File file = null;
			String filename = contentimg.getOriginalFilename();

			
			System.out.println("realpath:"+realpath);
			System.out.println("filename:"+filename);
			// 获得用户目录，不存在则创建
			String userDir = realpath + "\\" +uid;
			if (new File(userDir).exists() == false) {
				File ufile = new File(userDir);
				// 创建用户目录
				ufile.mkdir();
			}
			// 获得当前时间作为文件名的一部分
			Date t = new Date();
			SimpleDateFormat tt = new SimpleDateFormat("yyyy-MM-dd HH：mm：ss");
			String ttt = tt.format(t);
			file = new File(userDir + "\\" + ttt + "_" + filename);
			// 上传文件到用户目录
			try {
				contentimg.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println("上传成功" + userDir + "\\" + ttt + "-" + filename);
			String str="upload" + "\\" +uid+"\\"+ ttt + "_" + filename;
			System.out.println("str"+str);
			String str1=str.replace("\\", "/");
			System.out.println("str"+str1);
			//str1="file:///"+str1;
			return str;
		}
		
	}
}
