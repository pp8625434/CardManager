package com.base.framework.web.struts;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.base.framework.web.Action;
import com.opensymphony.xwork2.ActionSupport;


public abstract class BaseAction extends ActionSupport implements Action{
	
	private Object errorObject;
	
	private String lookup;

	public String getLookup() {
		return lookup;
	}

	public void setLookup(String lookup) {
		this.lookup = lookup;
	}
	
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	public HttpSession getSession() {
		//ServletActionContext.getContext()
		return ServletActionContext.getRequest().getSession(true);
	}
	
	
	public ServletContext getApplication(){
		
		ServletContext application = ServletActionContext.getServletContext();
		return application;

	}
	
	public String getParameter(String name) {
		return getRequest().getParameter(name);
	}
	
	/*
	 * ���ַ�ת������������������ͷ��ؿ�
	 */
	protected Date getDateFromStr(String sendTime_str) {
		Date returnDate= null;
		DateFormat df =  new SimpleDateFormat("yyyy-MM-dd HH:mm");
		 if (sendTime_str == null || sendTime_str.equals(""))
	     {
	    	return null;
	     }else
	     {
	    	 try{
	    		 returnDate = df.parse(sendTime_str);
	    	 }
	    	 catch(Exception e)
	    	 {
	    		 returnDate =  null; 
	    	 }
	     }
	    return returnDate;
	}
	
	public String saveFile(File file, String fileName,String moduleName) throws IOException {
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		String prefix = ServletActionContext.getServletContext().getRealPath(
				"/");
		String dateString = new Long (new Date().getTime() ).toString();
		String fileNameExt = fileName.substring(fileName.lastIndexOf("."));
		fileName  = dateString+ fileNameExt;
		 
		
		String filePath = "upload" + File.separator  
				+ moduleName + File.separator + formatter.format(new Date())
				+ File.separator + fileName;
		File dest = new File(prefix + File.separator + filePath);
		 
		FileUtils.copyFile(file, dest);
		 
		return filePath;
		
	}
	
	public Object getErrorObject() {
		return errorObject;
	}

	public void setErrorObject(Object errorObject) {
		this.errorObject = errorObject;
	}	
	
	public String perExecute(Object obj) throws Exception {
		return null;
	}
	
	public String postExecute(Object obj) throws Exception{
		return null;
	}
	
	public void writeJson(Object object) {
		try {
			String json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss" , SerializerFeature.DisableCircularReferenceDetect);
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
			ServletActionContext.getResponse().getWriter().flush();
			ServletActionContext.getResponse().getWriter().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static String formatDouble(double s){
		DecimalFormat fmt = new DecimalFormat("##0.00");
		return fmt.format(s);
	}
}
