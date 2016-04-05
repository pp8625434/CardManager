package com.manage.login.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.base.util.MD5Encrypt;
import com.base.util.Utils;
import com.base.framework.SpringContextHolder;
import com.base.framework.security.model.Role;
import com.base.framework.web.struts.BaseAction;
import com.manage.user.model.User;


/*
 * @author: llj
 * @see: 用于用户的退出操作
 * @date:Dec 9, 2012
 */
public class LogoutAction extends BaseAction{

	/*
	 * @see: 系统后台登录方式,将用户信息 在 application session 中删除
	 * @param:
	 * @date:Nov 28, 2012
	 */
	public String logout(){
		
		HttpSession session = getSession();
		
		User  user = (User)session.getAttribute("user");
		
		if(null != user ){
				
			ServletContext application = this.getApplication();
				
			Map<String,Integer> sessionUserMap = (Map<String,Integer>) application.getAttribute("sessionUserMap");
			Map<Integer,User> userMap = (Map<Integer,User>) application.getAttribute("userMap");
			if(user.getSessionId() != null){				
				sessionUserMap.remove(user.getSessionId());
			}	
			userMap.remove(user.getId());
				
			//向服务器的application中添加该登陆用户的信息。
			application.setAttribute("sessionUserMap", sessionUserMap);
			application.setAttribute("userMap", userMap);
			//删除session中的用户信息
			session.removeAttribute("user");
			session.removeAttribute("roleList");
			session.removeAttribute("userRoleList");
			
			///论坛
			
			HttpServletResponse response = this.getResponse();
			Cookie cookie =  new  Cookie("jforumUserInfo",  "" );   
		    cookie.setMaxAge(0);   
		    cookie.setPath("/");
		    response.addCookie(cookie);   
		  	Cookie cookie1 =  new  Cookie("jforumUserPsd",  "" );   
		    cookie1.setMaxAge(0);    
		    cookie1.setPath("/");
		    response.addCookie(cookie1);  
		  	Cookie cookie2 =  new  Cookie("jforumUserEmail",  "" );   
		    cookie2.setMaxAge(0);
		    cookie2.setPath("/");
		    response.addCookie(cookie2);  
				
		}
		return SUCCESS;
	}
	
}
