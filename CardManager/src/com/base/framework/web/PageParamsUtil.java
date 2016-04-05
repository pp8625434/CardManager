package com.base.framework.web;

import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;


import org.apache.commons.beanutils.PropertyUtils;

public class PageParamsUtil {
	private static StringBuffer sb ;
	/*
	 * ��ҳ������Ϣ
	 */
	public static String getPageParam(Object  pageInfo) throws Exception{
		sb = new StringBuffer();
		if(null == pageInfo){
			return "";
		}
 		execute(pageInfo,"");
		return sb.toString().substring(0, sb.length()-1);
	}
	
   public static void execute(Object obj,String str) throws Exception{
	   PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(obj);
		for(PropertyDescriptor p: properties){
			String name = p.getName();
			Object val = PropertyUtils.getProperty(obj, name);
			if(!(null==val || "class".endsWith(name) || "isFristPage".equals(name) || "isLastPage".equals(name)||"endRowPosition".equals(name)|| "maxRecords".equals(name)
					|| "startRowPosition".equals(name)|| "totalPage".equals(name)|| "totalRecords".equals(name)
			)){
				if(isBaseDataType(val.getClass())){
					if("".equals(str)){
						sb.append("pageInfo."+name).append("=").append(val.toString()).append("&");
					}else{
						sb.append("pageInfo."+str+"."+name).append("=").append(val.toString()).append("&");
					}
				}else{
					execute(val,name);
				}
			}
		}
   }	
	
  /*
   * infoҳ�����
   */	  
   public static HttpServletRequest setInfoParams(HttpServletRequest request,String title,String url,String params){
	   request.setAttribute("title",title);
	   request.setAttribute("url",title);
	   request.setAttribute("params",params);
	   return request;
   }
   
   private static boolean isBaseDataType(Class clazz)  throws Exception{  
	   return( 
	         clazz.equals(String.class) ||  
	         clazz.equals(Integer.class)||  
	         clazz.equals(Byte.class) ||  
	         clazz.equals(Long.class) ||  
	         clazz.equals(Double.class) ||  
	         clazz.equals(Float.class) ||  
	         clazz.equals(Character.class) ||  
	         clazz.equals(Short.class) ||  
	         clazz.equals(BigDecimal.class) ||  
	         clazz.equals(BigInteger.class) ||  
	         clazz.equals(Boolean.class) ||  
	         clazz.equals(Date.class) ||  
	         clazz.isPrimitive()  
	     );
 	 }
}
