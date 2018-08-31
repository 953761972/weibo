package com.yc.biz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@ContextConfiguration("/beans.xml")
public class GroupTest {
	@Autowired
	private GroupBiz gbiz;
	
	@Test
	public void insertdefault(){
		gbiz.insertdefault(100000);
	}
}
