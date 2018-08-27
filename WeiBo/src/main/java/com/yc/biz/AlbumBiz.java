package com.yc.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.bean.Album;
import com.yc.dao.AlbumDao;

@Service
public class AlbumBiz {
	@Autowired
	private AlbumDao adao;
	//新增相册
	public void insert(Album album){
		adao.insert(album);
	}
	//查找用户所有相册
	public List<Album> select(Integer uid){
		return adao.select(uid);
	}
	//删除一个相册
	public void delete(String albunname ,Integer uid){
		adao.delete(albunname, uid);
	}
	//修改相册名字
	public void update(Album album){
		adao.update(album);
	}
}
