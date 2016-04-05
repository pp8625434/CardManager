package com.base.framework.security.action;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.hibernate.mapping.Array;

import com.base.util.LogUtil;
import com.base.util.StringUtils;
//import com.base.constant.CacheConstants;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.dao.impl.InFilter;
import com.base.framework.dao.impl.SorterFactory;
import com.base.framework.paging.PageInfo;
import com.base.framework.security.action.info.RoleMenuLinkButtonInfo;
import com.base.framework.security.action.info.RolePageInfo;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.RoleMenuLink;
import com.base.framework.security.service.RoleManager;
import com.base.framework.security.service.RoleMenuLinkManager;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.cache.SecurityUtils;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.menu.model.BMenuLink;
import com.manage.menu.model.Menu;
import com.manage.menu.model.MenuLink;
import com.manage.menu.service.MenuLinkManager;
import com.manage.menu.service.MenuManager;
import com.manage.user.model.User;

public class RoleAction extends BaseAction{
	
	private Role role;
	private RolePageInfo pageInfo;
	private List<Role> roles;
	private String orderIndexs;
	private List<Menu> menus;
	private List<RoleMenuLink> roleMenuLinks;
	private String roleMenuLinkIndex;
	private String params;
	private String name;
	
	private List<RoleMenuLinkButtonInfo> roleMenuLinkButtonInfos;
	
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);

	public List<RoleMenuLinkButtonInfo> getRoleMenuLinkButtonInfos() {
		return roleMenuLinkButtonInfos;
	}

	public void setRoleMenuLinkButtonInfos(
			List<RoleMenuLinkButtonInfo> roleMenuLinkButtonInfos) {
		this.roleMenuLinkButtonInfos = roleMenuLinkButtonInfos;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private String result;
	public String test() throws Exception{
		System.out.println("ab");
		result = new String("true111");
		role = new Role();
		role.setId(333);
		System.out.println(result);
		System.out.println(role);
		return SUCCESS;
	}
	
	public String roleList() throws Exception {
		
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		pageInfo = pageInfo == null ? new RolePageInfo() : pageInfo;
		//pageInfo.setF_id(1);
		//pageInfo.setF_id_op(Filter.OPERATOR_NOT_EQ);
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		
		roles = roleMgr.getRoleList(sarchPageInfo);
		this.getRequest().setAttribute("currentPage",this.pageInfo.getCurrentPage());
		
		return SUCCESS;	
	}
	
	public String saveRole() throws Exception {
		User user = (User)this.getSession().getAttribute("user");
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		role.setName(StringUtils.delSpace(role.getName()));
//		Filter filter = FilterFactory.getSimpleFilter("name", role.getName(), Filter.OPERATOR_EQ);
//		List<Role> roles = roleMgr.getObjects(filter);
		
		String[] indexs = null;
		if(roleMenuLinkIndex != null)
			indexs = roleMenuLinkIndex.split(",");
		
//		if(roles.size() == 0){
//			if(role.getId() == null)
//				roles.add(new Role());
//			else{
//				roles.add(role);
//			}
//		}
//		Role _role = roles.get(0);
//		
//		_role.setDescription(role.getDescription());
//		_role.setDisplayRef(role.getDisplayRef());
//		_role.setName(role.getName());
		if(null != user){
			role.setCreateor(user.getId());
		}
		
		int typeNum = LogUtil.LOG_ADD_TYPE;
		if(role.getId() != null && role.getId() != -1){
			typeNum = LogUtil.LOG_UPDATE_TYPE;
		}
		
		roleMgr.saveRoleAndRoleMenuLink(role, roleMenuLinks, indexs);
		
		logMgr.saveLog(typeNum, LogUtil.LOG_ROLEMANAGE_FUNCTION, role.getId(), role.getName(), user.getId(), user.getRealname(),getRequest());
		
//		roleMgr.saveRole(role);
		updateRedisRoleList();
		SecurityUtils.clearRoleMenuHashMap();
		this.getRequest().setAttribute("title", "角色管理");
		this.getRequest().setAttribute("url","/admin/roleList.action");
		this.getRequest().setAttribute("params",this.params);
		return SUCCESS;
	}
	
	private List<RoleMenuLink> getRoleMenuLink(List<MenuLink> menuLinks){
		
		RoleMenuLinkManager roleMenuLinkMgr = (RoleMenuLinkManager)SpringContextHolder.getBean(RoleMenuLink.class);
		List<RoleMenuLink> currnt =  new ArrayList<RoleMenuLink>();
		
		if(role.getId() != null){
			Filter filter = FilterFactory.getSimpleFilter("role", role.getId(), Filter.OPERATOR_EQ);
			currnt = roleMenuLinkMgr.getObjects(filter);
		}
		List<RoleMenuLink> result = new ArrayList<RoleMenuLink>();
		
		for (MenuLink menuLink : menuLinks) {
			boolean hasMenuLink = false;
			for (RoleMenuLink roleMenuLink : currnt) {
				if( null != roleMenuLink.getMenuLink() && null != menuLink.getId()){
					if(roleMenuLink.getMenuLink().intValue() == menuLink.getId().intValue() ){
						hasMenuLink = true;
						roleMenuLink.setMenuLinkModel(menuLink);
						result.add(roleMenuLink);
						break;
					}
				}
			}
			
			if(hasMenuLink)
				continue;
			
			RoleMenuLink roleMenuLinkT = new RoleMenuLink();
			roleMenuLinkT.setMenuLinkModel(menuLink);
			result.add(roleMenuLinkT);
		}
		
		return result;
	}
	
	public String removeRole() throws Exception {
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		RoleMenuLinkManager roleMenuLinkMgr = (RoleMenuLinkManager)SpringContextHolder.getBean(RoleMenuLink.class);
		List<RoleMenuLink> tempList = roleMenuLinkMgr.getRoleMenuLinkByRole(role.getId().toString());
		if(tempList != null && tempList.size()>0){
			for(int i=0;i<tempList.size();i++){
				roleMenuLinkMgr.removeRoleMenuLinkById(tempList.get(i).getId());
			}
		}
		User user = (User)getSession().getAttribute("user");
		Role tempRole = roleMgr.getRoleById(role.getId());
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ROLEMANAGE_FUNCTION, tempRole.getId(), tempRole.getName(), user.getId(), user.getRealname(),getRequest());
		roleMgr.removeRoleById(role.getId());
		updateRedisRoleList(); 
		return SUCCESS;
	}
	
	public String viewRole() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		if(null != role && role.getId()>=0){
			role = roleMgr.getRoleById(role.getId());
		}
		
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		Sorter sorter = SorterFactory.getSimpleSort("menu.orderNum");
		Collection<Integer> list = new ArrayList<Integer>();
		list.add(1);
		InFilter inf = FilterFactory.getInFilter("menuLinkType", list, Filter.OPERATOR_IN);
		this.roleMenuLinks = getRoleMenuLink(menuLinkMgr.getObjects(inf, sorter));
		
		List<BMenuLink> bmenuList = SecurityUtils.getcrudList();
		
		Map<Integer,List<BMenuLink>> btempMap = new HashMap<Integer, List<BMenuLink>>();
		
		//给按钮、标签按照二级菜单分类
		for (BMenuLink bMenuLink : bmenuList) {
			List<BMenuLink> bList = btempMap.get(bMenuLink.getMenu());
			if(bList==null){
				bList = new ArrayList<BMenuLink>();
			}
			bList.add(bMenuLink);
			btempMap.put(bMenuLink.getMenu(), bList);
		}
		roleMenuLinkButtonInfos = new ArrayList<RoleMenuLinkButtonInfo>();
		for (RoleMenuLink rmLink : roleMenuLinks) {
			List<BMenuLink> bList = btempMap.get(rmLink.getMenuLinkModel().getId());
			if(bList==null){
				bList = new ArrayList<BMenuLink>();
			}
			List<RoleMenuLink> rmList = SecurityUtils.getRoleMenuLinkByRoID(role.getId());
			
			List<RoleMenuLink> temp = new ArrayList<RoleMenuLink>();
			
			for (BMenuLink bmenu : bList) {
				boolean hasMenuLink = false;
				for (RoleMenuLink roleMenuLink : rmList) {
					if( null != roleMenuLink.getMenuLink() && null != bmenu.getId()){
						if(roleMenuLink.getMenuLink().intValue() == bmenu.getId().intValue() ){
							hasMenuLink = true;
							roleMenuLink.setMenuLinkModel(setMenuLinkByBMenuLink(bmenu));
							temp.add(roleMenuLink);
							break;
						}
					}
				}	
				if(!hasMenuLink){
				
				RoleMenuLink roleMenuLinkT = new RoleMenuLink();
				roleMenuLinkT.setMenuLinkModel(setMenuLinkByBMenuLink(bmenu));
				temp.add(roleMenuLinkT);
				}
				
			}
			
			RoleMenuLinkButtonInfo rmlbInfo = new RoleMenuLinkButtonInfo();
			rmlbInfo.setRoleMenuLink(rmLink);
			rmlbInfo.setRoleMenuLinkList(temp);
			roleMenuLinkButtonInfos.add(rmlbInfo);
		}
		
		
		//this.roleMenuLinks = getRoleMenuLink(SecurityUtils.getMenuLinksList());
		
		this.menus = new LinkedList();
	    //sorter = SorterFactory.getSimpleSort("menu.orderNum");
		//List<MenuLink> menuLinks = menuLinkMgr.getObjects(null, sorter);

		this.menus = SecurityUtils.getMenusList();
		/*
		List<MenuLink> menuLinks = SecurityUtils.getMenuLinksList();
	    for (MenuLink menuLink : menuLinks) {
	      Menu menu = menuLink.getMenu();
	      boolean has = false;
	      if(Utils.isNotNullOrEmpty(menus)){
	      for (Menu _menu : this.menus) {
	    	  //System.out.println("###########" + menu.getId() + "@@@@@@@@@@@@" + _menu.getId());
	        if (menu.getId().equals(_menu.getId())) {
	          has = true;
	          break;
	        }
	      }
	      }
	      if (has)
	        continue;
	      
	      this.menus.add(menu);
	    }
	    */
		String view = this.getRequest().getParameter("view");
		if(view!=null && view.equals("1")){
			return "view";
		}
		return SUCCESS;
	}
	
	
	
	public String removeAllRole() throws Exception {
		
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		User user = (User)getSession().getAttribute("user");
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			Role temprole = null;
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					temprole = roleMgr.getRoleById(Integer.parseInt(ids[i]));
					Integer roleid = new Integer( ids[i] );
					
					logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ROLEMANAGE_FUNCTION, temprole.getId(), temprole.getName(), user.getId(), user.getRealname(),getRequest());
					roleMgr.removeRoleById(roleid);
				}
			}
		}
		updateRedisRoleList(); 
		return SUCCESS;
	}
	
	/**
	 *更新角色列表 
	 */
	private void updateRedisRoleList(){
		SecurityUtils.setRolesList();
		SecurityUtils.setRolesMap();
		SecurityUtils.setMenusMap();
		SecurityUtils.setMenusList();
		SecurityUtils.setMenuLinksMap();
		SecurityUtils.setMenuLinksList();
		SecurityUtils.clearRoleMenuHashMap();
	}
	
	public String checkRole(){
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		role = roleMgr.getRoleByName(name);
		if(role != null){
			result = "succ";
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	public String updateTopHTML(){
		URL url;
		try {
			url = new URL("http://shop.letv.com/head.html");
			URLConnection uc=url.openConnection();//生成连接对象
	        uc.setDoOutput(true);
	        uc.connect(); //发出连接
	        String temp;
	        StringBuffer sb = new StringBuffer();
	        BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(),"utf-8"));
	        while ((temp = in.readLine()) != null) {
	        	sb.append("\n");
	        	sb.append(temp.replace("<link  type='text/css' href='/", "<link  type='text/css' href='http://shop.letv.com/").replace("<script type='text/javascript' src='/", "<script type='text/javascript' src='http://shop.letv.com/"));
	        }
	       	in.close();
	       	FileOutputStream fos = new FileOutputStream(ServletActionContext.getServletContext().getRealPath("/")+"top.html");
	       	OutputStreamWriter osw = new OutputStreamWriter(fos, "UTF-8"); 
	       	osw.write(sb.toString());
	       	osw.flush();
	       	
	       	url = new URL("http://shop.letv.com/footer.html");
			uc=url.openConnection();//生成连接对象
	        uc.setDoOutput(true);
	        uc.connect(); //发出连接
	        sb = new StringBuffer();
	        in = new BufferedReader(new InputStreamReader(url.openStream(),"utf-8"));
	        while ((temp = in.readLine()) != null) {
	        	sb.append("\n");
	        	sb.append(temp.replace("<link  type='text/css' href='/", "<link  type='text/css' href='http://shop.letv.com/").replace("<script type='text/javascript' src='/", "<script type='text/javascript' src='http://shop.letv.com/"));
	        }
	       	in.close();
	       	fos = new FileOutputStream(ServletActionContext.getServletContext().getRealPath("/")+"bottom.html");
	       	osw = new OutputStreamWriter(fos, "UTF-8"); 
	       	osw.write(sb.toString()+"<script type=\"text/javascript\">var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3Fbce2585887a7f444107d7a276eeb876b' type='text/javascript'%3E%3C/script%3E\"));</script>");
	       	osw.flush();
			result = "succ";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			result = "fail";
			e.printStackTrace();
		}
        
		return SUCCESS;
	}
	
	private MenuLink setMenuLinkByBMenuLink(BMenuLink blink){
		MenuLink mLink = new MenuLink();
		mLink.setId(blink.getId());
		mLink.setDisplayRef(blink.getDisplayRef());
		return mLink;
	}
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public RolePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(RolePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}

	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}

	public List<RoleMenuLink> getRoleMenuLinks() {
		return roleMenuLinks;
	}

	public void setRoleMenuLinks(List<RoleMenuLink> roleMenuLinks) {
		this.roleMenuLinks = roleMenuLinks;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getRoleMenuLinkIndex() {
		return roleMenuLinkIndex;
	}

	public void setRoleMenuLinkIndex(String roleMenuLinkIndex) {
		this.roleMenuLinkIndex = roleMenuLinkIndex;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}	
}
