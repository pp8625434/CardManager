package com.base.framework.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.base.util.Utils;


public class SessionTimeOutFilter extends HttpServlet implements Filter{  

	private FilterConfig filterConfig;  //Handle the passed-in FilterConfig
	
	private String loginPage = null;  
	
	private String[] pageBeforeLogin;
	
	private final String[] DEFAULT_LOGIN_PAGE={"/login.jsp"};

	public void init(FilterConfig filterConfig) throws ServletException {  
	     
	    try{
	      loginPage=filterConfig.getInitParameter("loginPage");
	    }catch(java.lang.Exception e){
	      loginPage=DEFAULT_LOGIN_PAGE[0];
	    }

	    try{
	    	String pageBeforeLoginStr = filterConfig.getInitParameter("pageBeforeLogin");
	    	if(Utils.isNotNullOrEmpty(pageBeforeLoginStr)){
	    		pageBeforeLogin=(loginPage + "," + pageBeforeLoginStr).split(",");
	    	}
	    } catch(Exception e){
	    	e.printStackTrace();
	    }
	      
	}  
  
	public void doFilter(ServletRequest request, ServletResponse response,  
	        FilterChain filterChain) throws IOException, ServletException {  
	    HttpServletRequest req = (HttpServletRequest) request;  
	    HttpServletResponse res = (HttpServletResponse) response;  
	    res.addHeader("P3P", "CP=CAO PSA OUR");  
	      
	    HttpSession session = req.getSession(false);  
	    boolean flag = false;  
	    String targetURL = req.getRequestURI();  
	
	    
	    if(session!=null && session.getAttribute("user")!=null){
       		doNext(request, response, filterChain);
           return;
       }
	    
	    
	  //clientRequest ��¼����ı������ URL ���� /index.jsp;/login.jsp;/
	    String clientRequest = req.getServletPath();
	    System.out.println(clientRequest);
	       for (int i=0;i<pageBeforeLogin.length;i++)
	       {
	         if (pageBeforeLogin[i].equalsIgnoreCase(clientRequest))
	         {
	            doNext(request,response,filterChain);
	            return;
	         }
	       }
	       
	       //���е��˴�˵������ת����¼����

		    try{
		       //RequestDispatcher rd = this.filterConfig.getServletContext().getRequestDispatcher(loginPage); // req.getRequestDispatcher(loginPage);
		       //rd.forward(request, res);

		        res.sendRedirect(req.getContextPath()+ loginPage);
		        return;
		        
		    }catch(Exception e){
		      e.printStackTrace();
		    }
	    
	    /*
	    if (session != null && session.getAttribute("user") != null) {  
	        flag = true;  
	    }else if(targetURL.endsWith(loginPage)) {  
	        flag = true;  
	    }else {  
	            String BasePath = null;  
	            if (req.getContextPath().equals("")){  
	                BasePath = req.getScheme() + "://" + req.getServerName()  
	                        + ":" + req.getServerPort() + "/index.jsp";  
	            }  
	            else{  
	                BasePath = req.getScheme() + "://" + req.getServerName()  
	                        + ":" + req.getServerPort() + req.getContextPath()  
	                        + "/index.jsp";  
	            }  
	            res.sendRedirect(BasePath);  
	            System.out.println("###########################"+ BasePath);
	            return;  
	    }  
	
	    if (!flag){
	        
	        java.io.PrintWriter writer = res.getWriter(); 
	        writer.print("<script language=\"javascript\">"); 
	        writer.print("if(window.parent==null){"); 
	        writer.print("window.open(\"" + req.getContextPath() + "/login.jsp" 
	                + "\");"); 
	        writer.print("}else{"); 
	        writer.print("window.parent.top.location.href=\"" 
	                + req.getContextPath() + "/login.jsp" + "\";}"); 
	        writer.print("</script>"); 
	        writer.flush(); 
	
	        return;  
	    } else {  
	        chain.doFilter(request, response);  
	    }
	    */
	}

	
	 private void doNext(ServletRequest request, ServletResponse response, FilterChain filterChain){
	   try {
	          filterChain.doFilter(request, response);
	        }
	        catch(ServletException sx) {
	          filterConfig.getServletContext().log(sx.getMessage());
	        }
	        catch(IOException iox) {
	          filterConfig.getServletContext().log(iox.getMessage());
	        }
	 }
	
	public void destroy() {  
	    this.loginPage=null;  
	}

}

/*
public class SessionTimeOutFilter extends OncePerRequestFilter {
	
	private String sessionAttributeKey;
	private String redirectURI;
	private String uncludeURIs;

	protected boolean shouldNotFilter(HttpServletRequest request) throws ServletException {
		HttpSession session = ((HttpServletRequest)request).getSession();
		Object obj = session.getAttribute(sessionAttributeKey);
		String requestURI = request.getRequestURI();
		Set<String> uncludes = new HashSet<String>();
		
		if(Utils.isNotNullOrEmpty(request.getContextPath()) ){
			//redirectURI = request.getContextPath() + redirectURI;
		}
		
		if(uncludeURIs == null)
			uncludes.add(redirectURI);
		else
			paserUnclude(uncludes);
			
		if(obj != null || uncludes.contains(requestURI))
			return true;
		return false;
	}
	
	private void paserUnclude(Set uncludes){
		String[] uris = StringUtils.strToStrArray(uncludeURIs);
		for (int i = 0; i < uris.length; i++) {
			uncludes.add(uris[i]);
		}
	}
	
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
		if(!shouldNotFilter(request))
			response.sendRedirect(redirectURI);
		
	}

	public void setRedirectURI(String redirectURI) {
		this.redirectURI = redirectURI;
	}

	public void setSessionAttributeKey(String sessionAttributeKey) {
		this.sessionAttributeKey = sessionAttributeKey;
	}

	public void setUncludeURIs(String uncludeURIs) {
		this.uncludeURIs = uncludeURIs;
	}

}
*/
