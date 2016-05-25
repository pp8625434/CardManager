package com.manage.login.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.base.util.FormatDate;
import com.base.util.GUIDUtil;
import com.base.util.MD5Encrypt;
import com.base.util.Utils;
import com.base.framework.BaseConfigHolder;
import com.base.framework.SpringContextHolder;
import com.base.framework.security.model.UserRole;
import com.base.framework.security.service.UserRoleManager;
import com.base.framework.web.struts.BaseAction;
import com.manage.cache.SecurityUtils;
import com.manage.login.model.LoginLog;
import com.manage.login.model.LoginResult;
import com.manage.login.model.PlatUserRole;
import com.manage.login.model.UserRoleResult;
import com.manage.login.service.LoginLogManager;
import com.manage.menu.model.Menu;
import com.manage.menu.model.MenuLink;
import com.manage.user.model.User;
import com.manage.user.service.UserManager;

/*
 * @author: llj
 * @see: 用户登录
 * @date:2014
 */
public class LoginAction extends BaseAction{
	
	private User user;
	
	private String ctx;
	
	// 用于前台菜单显示
	private List<Menu> menuList;
	
	private List<MenuLink> menuLinkList;
	
	private Map map;
	
	private String msg;
	
	private List<UserRole>  userRoleList;
	
	private UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
	
	/*
	 * @see: 系统后台登录方式,将用户信息赋到 session中 
	 * 		同时要进行判断是否重复登录
	 * @param:
	 * @date:Nov 28, 2012
	 */
	
	public String login() throws Exception{
				
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new  Date();
		if(null == user || Utils.isNullOrEmpty(user.getName()) 
				|| Utils.isNotNullOrEmpty(user.getId())){
			msg = "请输入的用户名或密码！";
			return this.LOGIN;
		}
		
		if(Utils.isNotNullOrEmpty(user.getName())){
			user.setPassword((MD5Encrypt.encrypt(user.getPassword())));
			FormatDate fd = new FormatDate();
			user = userMgr.getUserByName(user.getName(),user.getPassword()); //目前不做密码判断。
			if(user == null){
				msg = "用户名或密码错误！请重新输入。";
				return this.LOGIN;
			}
			//判断账号是否开通
			if(user.getIsopen() != 1){
				msg = "您的账号还未开通，请联系管理员！";
				return this.LOGIN;
			}
			
			// 判断账号是够过期
			
			String systemDate = sdf.format(date);
			//int s = fd.compare_date(sdf.format(user.getAccountoverdate()),systemDate);
			if(user.getAccountoverdate()!= null && fd.compare_date(sdf.format(user.getAccountoverdate()),systemDate) < 0 ){
				msg = "您的账号已过期，请联系管理员！";
				return this.LOGIN;
			}
			
			if(null != user && user.getId()>=0){
				//判断用户 是否有角色权限，如果没有则无法登录系统	
				UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
				userRoleList = userRoleMgr.getRoleListByUser(user.getId());
				if(userRoleList == null || userRoleList.size() <= 0){
					msg = "您的账号没有管理权限，无法登陆！";
					return this.LOGIN;
				}
				
				getSession().setAttribute("user", user);
				List roleList = userMgr.getUserRole(user.getId());
				getSession().setAttribute("roleList", roleList);//用户的具体角色
				ServletContext application = this.getApplication();
				//当前session 的id 
				String sessionId = getSession().getId();
				
				Map<String,Integer> sessionUserMap = (Map<String,Integer>) application.getAttribute("sessionUserMap");
				
				Map<Integer,User> userMap = (Map<Integer,User>) application.getAttribute("userMap");
				
				//如果sessionmap ， usermap 为null则初始化这两个Map
				if(Utils.isNullOrEmpty(sessionUserMap)){
					sessionUserMap = new HashMap<String,Integer>();
				}
				
				if(Utils.isNullOrEmpty(userMap)){
					userMap = new HashMap<Integer,User>();
				}
				
				Integer userID = sessionUserMap.get(sessionId);
				
				if(Utils.isNotNullOrEmpty( userID )){
					userMap.remove(userID);
					sessionUserMap.remove(sessionId);
				}
				
				User userTemp = userMap.get(user.getId());
				
				if(null == userTemp){
					
					//如果application中没有存放登陆用户的信息，则该账号首次登陆
					Date nowTime = new Date(); 
					String TempTime = "" + nowTime.getTime();
					
					//userTemp.setCookieId(TempTime);
					user.setSessionId(sessionId);
					
					//向服务器的application中添加该登陆用户的信息。
					sessionUserMap.put(sessionId, user.getId());
					application.setAttribute("sessionUserMap", sessionUserMap);
					userMap.put(user.getId(), user);
					application.setAttribute("userMap", userMap);

					
				}else{
					
					String sessionIdOld = userTemp.getSessionId();
					sessionUserMap.remove(sessionIdOld);
					sessionUserMap.put(sessionId, user.getId());
					
					userTemp.setSessionId(sessionId);
					userMap.remove(userTemp.getId());
					userMap.put(userTemp.getId(), userTemp);
					
					//向服务器的application中添加该登陆用户的信息。
					application.setAttribute("sessionUserMap", sessionUserMap);
					application.setAttribute("userMap", userMap);
					
				}
				
				if(null != user && user.getId()>=0){
					
					HttpServletResponse response = this.getResponse();
					getSession().setAttribute("user", user);
					if(BaseConfigHolder.getBbsFlag()){
					//登录成功后用户信息写入cookie论坛使用信息登录
					 Cookie cookie =  new  Cookie("jforumUserInfo", user.getName());   
				     cookie.setMaxAge(- 1 );   
				     cookie.setPath("/");
					 response.addCookie(cookie);
					 
					 Cookie cookie1 =  new  Cookie("jforumUserPsd", user.getPassword());   
				     cookie1.setMaxAge(- 1 );
				     cookie1.setPath("/");
					 response.addCookie(cookie1);
					 
					 
					 Cookie cookie2 =  new  Cookie("jforumUserEmail", user.getMail());   
				     cookie2.setMaxAge(- 1 );   
				     cookie2.setPath("/");
					 response.addCookie(cookie2);
					}
				}
				
				if(Utils.isNullOrEmpty((String)this.getApplication().getAttribute("ctx")) 
						 ){
					this.getApplication().setAttribute("ctx", this.getRequest().getContextPath());
				}
				
				
			}
		
		}
		setSysMenu();
		
		//  ===========用户登录日志=============
		LoginLogManager logmgr  = (LoginLogManager) SpringContextHolder.getBean(LoginLog.class);
		LoginLog log = new LoginLog();
		log.setUserid(user.getId());
		log.setUsername(user.getRealname());
		log.setIsfront(0);//表示为后台
		log.setLogindate(date);
		log.setId(GUIDUtil.generateGUID());
		log.setUserip(this.getRequest().getRemoteAddr());
		logmgr.saveLoginLog(log);
		return SUCCESS;
	}
	
	public void setSysMenu() {
		
		User user = (User)getSession().getAttribute("user");
		if(null != user && user.getId()>=0){
			
			UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
			
			menuLinkList = new ArrayList();
			menuList = new ArrayList();
			map = new LinkedHashMap<Menu,ArrayList>();
				//Map<Menu,ArrayList> hashMap = new HashMap();
			List<UserRole> userRoleList = userRoleMgr.getRoleListByUser(user.getId());

				
		    	//获取 一级菜单
	    	List<Menu> menuList = (ArrayList<Menu>)SecurityUtils.getMenusList();
	    	
	    	String rIDs = null;
	    	
	    	if( Utils.isNotNullOrEmpty(userRoleList) && Utils.isNotNullOrEmpty(menuList) ){
	    			
	    			if(userRoleList.size()==1){
	    				
	    				//HashMap mapTemp = new HashMap();
		    			UserRole userRole = userRoleList.get(0);
		    			Integer role = userRole.getRole();
		    			rIDs = role + "";
		    			map = (HashMap<Menu,ArrayList>)SecurityUtils.getHashMapByRole(role);
	    			    
	    			}
	    			
	    			
	    			if(userRoleList.size()>1){
		    		for (int i=0,cnt=userRoleList.size();i<cnt;i++){
		    			//UserRole userRole : userRoleList
		    			HashMap mapTemp = new HashMap();
		    			UserRole userRole = userRoleList.get(i);
		    			Integer role = userRole.getRole();
		    			if(rIDs==null){
		    				rIDs = role+"";
		    			}else{
		    				rIDs += "," + role;
		    			}
		    			mapTemp = (HashMap<Menu,ArrayList>)SecurityUtils.getHashMapByRole(role);
		    			
		    			for(Menu menu:menuList){
		    				
			    			if( Utils.isNotNullOrEmpty(mapTemp) ){
			    				ArrayList<MenuLink> menuLinkListTemp = new ArrayList<MenuLink>();
			    				Iterator iter = mapTemp.entrySet().iterator();
			    				while (iter.hasNext()) {
			    					Map.Entry entry = (Map.Entry) iter.next();
			    					Menu key = (Menu)entry.getKey();
			    					ArrayList<MenuLink> val = (ArrayList<MenuLink>)entry.getValue();
			    					
			    					if(null != key && key.getId().equals(menu.getId()) && Utils.isNotNullOrEmpty(val)){
			    						
			    						for(MenuLink menuLink:val){
			    						
			    							boolean flag = true;
			    							for(MenuLink menuLinkTemp:menuLinkListTemp){
				    							if(menuLinkTemp.getId().equals(menuLink.getId())){
				    								flag = false;
				    								break;
				    							}else{
				    								flag = true;
				    								continue;
				    							}
				    						}
				    						if(flag){
				    							menuLinkListTemp.add(menuLink);
				    							
				    						}
			    						}
			    						//menuLinkList.add();
			    						
			    					}
			    					if(Utils.isNotNullOrEmpty(menuLinkListTemp)){
				    					ArrayList<MenuLink> menuLinkListTemp2 =  (ArrayList<MenuLink>)menuLinkListTemp.clone();
				    					map.put(key, menuLinkListTemp2);
				    					menuLinkListTemp.clear();
			    					}
			    				}
			    				
			    				
			    			}
			    			
		    			}
		    			
		    		}
	    			}
		    	}
	    		getSession().setAttribute("rIDs", rIDs);
			}
		
	}
	
	
	
	
	
	public String index(){
		return SUCCESS;
		
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}

	public String getCtx() {
		return ctx;
	}

	public void setCtx(String ctx) {
		this.ctx = ctx;
	}

	public Map getMap() {
		return map;
	}
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	
	
	
}
