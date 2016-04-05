package com.base.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class URLFilter implements Filter {
	
	//可以不登陆通过的url
	private String passUrl;
	
	private String[] passUrls;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		this.passUrl = null;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		//System.out.println(passUrl+loginPage+otherplacePage+sessiontimeoutPage);
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
	    if(req.getSession()!= null && req.getSession().getAttribute("user")==null){
	    	
	    	//判断是否是允许通过的uri
	    	boolean ispass = true;
			
	    	if((req.getServletPath().toLowerCase().indexOf("admin")>=0 || req.getServletPath().toLowerCase().indexOf("/user")>=0) && (req.getServletPath().toLowerCase().indexOf("admin/image.jsp")<0) && (req.getServletPath().toLowerCase().indexOf("admin/login.jsp")<0) && (req.getServletPath().toLowerCase().indexOf("admin/login.action")<0) && (req.getServletPath().toLowerCase().indexOf("admin/common/session.jsp")<0)){
	    		
				ispass = false;
			}
	    	if(!ispass){
				res.sendRedirect(req.getContextPath()+"/admin/common/session.jsp");
				return;
			}
	    }
	    chain.doFilter(request, response);
	}
	

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
