package com.base.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class BASE64Util {
	
	/**
	 * 加密
	 * @param url
	 * @return
	 */
	public static String encodeURL(String url){
		//进行第一次encode
		BASE64Encoder encoder = new BASE64Encoder();
		String e1;
		try {
			e1 = encoder.encode(url.getBytes("utf-8"));
			BASE64Encoder encoder2 = new BASE64Encoder();
			return encoder2.encode(e1.getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 解密字符串
	 * @param encodeStr
	 * @return
	 */
	public static String decodeoURL(String url){
		try {
			BASE64Decoder decoder = new BASE64Decoder();
			String d1 = new String(decoder.decodeBuffer(url),"utf-8");
			BASE64Decoder decoder2 = new BASE64Decoder();
			return new String(decoder2.decodeBuffer(d1),"utf-8");
		} catch (IOException e) {
			return null;
		}
	}
	
}
