package com.base.framework.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**

 * 
 * @see javax.servlet.http.HttpServletRequest
 * @see javax.servlet.http.HttpServletResponse
 * @see javax.servlet.http.HttpSession
 */
public interface Action {
	
	public String execute() throws Exception;
	public String getLookup();
	public HttpServletRequest getRequest();
	public HttpServletResponse getResponse();
	public HttpSession getSession();
	public String getParameter(String name);
	public String saveFile(File file, String fileName,String moduleName) throws IOException;
	public String perExecute(Object obj) throws Exception;
	public String postExecute(Object obj) throws Exception;
	
}
