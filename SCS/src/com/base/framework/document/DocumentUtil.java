package com.base.framework.document;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import sun.misc.BASE64Encoder;

public class DocumentUtil {
	
	/**
	 * 数据Map
	 */
	private Map dataMap;
	
	/**
	 * 模板文件名称
	 */
	private String ftlName;
	
	/**
	 * 模板文件包路径
	 */
	private String ftlPath;
	
	/**
	 * 输出文件路径
	 */
	private String outPath;
	
	private Configuration configuration = null;

	public DocumentUtil() {
		configuration = new Configuration();
		configuration.setDefaultEncoding("utf-8");
	}
	
	public DocumentUtil(String ftln , String ftlp,String opath){
		this();
		this.ftlName = ftln;
		this.ftlPath = ftlp;
		this.outPath = opath;
	}
	
	public boolean createDoc(){
		//要填入模本的数据文件
		//设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，
		//这里我们的模板是放在com.manage.document.template包下面
		configuration.setClassForTemplateLoading(this.getClass(), ftlPath==null?"/com/manage/document/template":ftlPath);
		Template t=null;
		try {
			//test.ftl为要装载的模板
			t = configuration.getTemplate(ftlName);
			//输出文档路径及名称
			File outFile = new File(outPath);
			Writer out = null;
			out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile),"utf-8"));
			t.process(dataMap, out);
		} catch (TemplateException e) {
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
	
	/**
	 * 获取图片的内容字节流
	 * @param imgPath
	 * @return
	 */
	public String getImageStr(String imgPath) { 
		InputStream in = null; 
		byte[] data = null; 
		try {  
			in = new FileInputStream(imgPath); 
			data = new byte[in.available()]; 
			in.read(data); 
			in.close();  
		} catch (IOException e) { 
			e.printStackTrace(); 
		}  
		BASE64Encoder encoder = new BASE64Encoder(); 
		return encoder.encode(data); 
	}

	public void setDataMap(Map dataMap) {
		this.dataMap = dataMap;
	}
}
