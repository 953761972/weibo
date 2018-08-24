package com.yc.util;

import com.yc.biz.BizException;

public class ValidUtils {

	public static void check(String uname, String upass) throws BizException {
		// TODO Auto-generated method stub
		if(uname==null||"".equals(uname)){
			throw new BizException(upass);
		}
		
	}

	public static void isFalse(boolean equals, String string) throws BizException {
		// TODO Auto-generated method stub
		if(equals){
			
		}else
		throw new BizException(string);
	}


}
