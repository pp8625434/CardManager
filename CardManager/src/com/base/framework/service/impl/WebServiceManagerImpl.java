package com.base.framework.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import sun.misc.BASE64Encoder;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.base.framework.dao.Dao;
import com.base.framework.service.WebServiceManager;

public class WebServiceManagerImpl implements WebServiceManager {
	
	public Dao dao = null;

	protected final Log log = LogFactory.getLog(getClass());

	public void setDao(Dao dao) {
		this.dao = dao;
	}
	
	protected Class modelClass = null;

	public void setModelClass(Class modelClass) {
		this.modelClass = modelClass;
	}
	
	//对象格式化成json
	public static String formatJson(Object object) {
		return JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss" , SerializerFeature.DisableCircularReferenceDetect);
	}
	
	//对json进行encode
	public static String encodeJson(String jsonStr){
		//进行第一次encode
		BASE64Encoder encoder = new BASE64Encoder();
		String e1 = encoder.encode(jsonStr.getBytes());
		//进行第二次encode
		BASE64Encoder encoder2 = new BASE64Encoder();
		return encoder2.encode(e1.getBytes());
	}
	
}
