package com.yc.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Photo;
import com.yc.dao.PhotoDao;

@Service
public class PhotoBiz {
	@Autowired
	private PhotoDao pdao;
	//往相册里添加照片
	public void insert(Photo photo){
		pdao.insert(photo);
	}
	//删除一张照片
	public void delete(Photo photo){
		pdao.delete(photo);
	}
	//查找用户所有相片
	public void selectAll(Integer uid){
		pdao.selectAll(uid);
	}
	//查找一个相册下的所有相片
	public void selectByAlbum(Integer albumid){
		pdao.selectByAlbum(albumid);
	}
}
