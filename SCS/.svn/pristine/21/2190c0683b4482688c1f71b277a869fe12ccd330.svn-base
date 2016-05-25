package com.manage.menu.action;

import java.util.Date;
import java.util.List;

import com.base.util.LogUtil;
import com.base.util.StringUtils;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.menu.action.info.MenuPageInfo;
import com.manage.menu.model.Menu;
import com.manage.menu.service.MenuManager;

import com.manage.user.model.User;

/*
 * @see: 实现菜单基本功能
 * @date:Oct 19, 2012
 */
public class MenuAction extends BaseAction{
	
	private Menu menu;
	private MenuPageInfo pageInfo;
	private List<Menu> menus;
	private String menuIndexs;
	private String params;
	private String name;
	private String result;
	
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	public String menuList() throws Exception {
		MenuManager menuMgr = (MenuManager)SpringContextHolder.getBean(Menu.class);
		pageInfo = pageInfo == null ? new MenuPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		
		menus = menuMgr.getMenuList(sarchPageInfo);
		
		return SUCCESS;	
	}
	
	public String saveMenu() throws Exception {
		MenuManager menuMgr = (MenuManager)SpringContextHolder.getBean(Menu.class);
		User user  = (User)getSession().getAttribute("user");
		if(user !=null && user.getId()>0){
			menu.setCreator(user.getId());	
		}
		
		//// 判断日志操作类型（增、删）
		int typeNum = LogUtil.LOG_ADD_TYPE;
		if(menu.getId() != null){
			typeNum = LogUtil.LOG_UPDATE_TYPE;
		}
		//去掉空格
		menu.setName(StringUtils.delSpace(menu.getName()));
		menuMgr.saveMenu(menu);
		
		///// 记录操作日志
		logMgr.saveLog(typeNum, LogUtil.LOG_MENUMANAGE_FUNCTION, menu.getId(), menu.getName(), user.getId(), user.getRealname(),getRequest());
		
		this.getRequest().setAttribute("title","一级菜单管理");
		this.getRequest().setAttribute("url","/admin/menuList.action");
		this.getRequest().setAttribute("params",this.params);
		return SUCCESS;
	}
	
	public String removeMenu() throws Exception {
		MenuManager menuMgr = (MenuManager)SpringContextHolder.getBean(Menu.class);
		menu = menuMgr.getMenuById(menu.getId());
		
		menuMgr.removeMenuById(menu.getId());
		
		///// 记录操作日志
		User user  = (User)getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_MENUMANAGE_FUNCTION, menu.getId(), menu.getName(), user.getId(), user.getRealname(),getRequest());
		
		return SUCCESS;
	}
	
	public String viewMenu() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		MenuManager menuMgr = (MenuManager)SpringContextHolder.getBean(Menu.class);
		menu = menuMgr.getMenuById(menu.getId());
		return SUCCESS;
	}
	
	public String removeAllMenu() throws Exception {
		MenuManager menuMgr = (MenuManager)SpringContextHolder.getBean(Menu.class);
		
		if (menuIndexs != null && menuIndexs.length()> 0 )
		{
			User user  = (User)getSession().getAttribute("user");
			String[] ids= menuIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					Integer menuid = new Integer( ids[i] );
					menu = menuMgr.getMenuById(menuid);
					
					menuMgr.removeMenuById(menuid);
					
					///// 记录操作日志
					logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_MENUMANAGE_FUNCTION, menu.getId(), menu.getName(), user.getId(), user.getRealname(),getRequest());
				}
			}
		}
		
		return SUCCESS;
	}
	
	/**
	 * 唯一验证 
	 * @return
	 */
	public String checkMenuName() {
		MenuManager menuMgr = (MenuManager)SpringContextHolder.getBean(Menu.class);
		menu = menuMgr.getMenuByName(name);
		if(menu != null){
			result = "succ";
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	
	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	
	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}

	public MenuPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(MenuPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getMenuIndexs() {
		return menuIndexs;
	}

	public void setMenuIndexs(String menuIndexs) {
		this.menuIndexs = menuIndexs;
	}	
	
	
}
