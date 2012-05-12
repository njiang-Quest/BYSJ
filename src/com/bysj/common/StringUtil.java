package com.bysj.common;

import java.io.UnsupportedEncodingException;

public class StringUtil {
	public static String list2String(String[] strings){
		StringBuffer sb = new StringBuffer(1024);
		for(int i= 0;i < strings.length; i++){
			sb.append(strings[i]).append(",");
		}
		String str = sb.toString();
		while(str.endsWith(",")) {
			str = str.substring(0, str.length()-1);
		}
		return str;
		
	}
	
	public static String toGB2312(String str){
		try {
			return new String(str.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
