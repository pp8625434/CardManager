package com.manage.menu.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


import com.base.util.LogUtil;
import com.base.util.StringUtils;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.dao.impl.InFilter;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;

import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.menu.action.info.MenuLinkPageInfo;
import com.manage.menu.action.info.MenuPageInfo;
import com.manage.menu.model.Menu;
import com.manage.menu.model.MenuLink;
import com.manage.menu.service.MenuLinkManager;
import com.manage.menu.service.MenuManager;
import com.manage.user.model.User;

public class MenuLinkAction extends BaseAction{
	
	private MenuLink menuLink;
	private MenuLinkPageInfo pageInfo;
	private List<MenuLink> menuLinks;
	private String menuLinkIndexs;
	private String params;
	private String linkUrl;
	private String result;
	
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	public String menuLinkList() throws Exception {
		
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		pageInfo = pageInfo == null ? new MenuLinkPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		Collection<Integer> list = new ArrayList<Integer>();
		list.add(1);
		InFilter inf = FilterFactory.getInFilter("menuLinkType", list, Filter.OPERATOR_IN);
		sarchPageInfo.setFilter(inf);
		menuLinks = menuLinkMgr.getMenuLinkList(sarchPageInfo);
		return SUCCESS;	
	}
	
	public String saveMenuLink() throws Exception {
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		User user  = (User)getSession().getAttribute("user");
		if(user !=null && user.getId()>0){
			menuLink.setCreator(user.getId());	
		}
		//// 判断日志操作类型（增、删）
		int typeNum = LogUtil.LOG_ADD_TYPE;
		if(menuLink.getId() != null){
			typeNum = LogUtil.LOG_UPDATE_TYPE;
		}
		//去掉空格
		menuLink.setName(StringUtils.delSpace(menuLink.getName()));
		menuLink.setMenuLinkType(1);
		menuLinkMgr.saveMenuLink(menuLink);
		
		///// 记录操作日志
		logMgr.saveLog(typeNum, LogUtil.LOG_MENULINKMANAGE_FUNCTION, menuLink.getId(), menuLink.getName(), user.getId(), user.getRealname(),getRequest());
		
		this.getRequest().setAttribute("title","二级菜单管理");
		this.getRequest().setAttribute("url","/admin/menuLinkList.action");
		this.getRequest().setAttribute("params",this.params);
		return SUCCESS;
	}
	
	public String removeMenuLink() throws Exception {
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		menuLink = menuLinkMgr.getMenuLinkById(menuLink.getId());
		
		menuLinkMgr.removeMenuLinkById(menuLink.getId());
		
		///// 记录操作日志
		User user  = (User)getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_MENULINKMANAGE_FUNCTION, menuLink.getId(), menuLink.getName(), user.getId(), user.getRealname(),getRequest());
		
		return SUCCESS;
	}
	
	public String viewMenuLink() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		menuLink = menuLinkMgr.getMenuLinkById(menuLink.getId());
		return SUCCESS;
	}
	
	public String removeAllMenuLink() throws Exception {
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		
		if (menuLinkIndexs != null && menuLinkIndexs.length()> 0 )
		{
			User user  = (User)getSession().getAttribute("user");
			String[] ids= menuLinkIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					Integer menuLinkid = new Integer( ids[i] );
					menuLink = menuLinkMgr.getMenuLinkById(menuLinkid);
					
					menuLinkMgr.removeMenuLinkById(menuLinkid);
					
					///// 记录操作日志
					logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_MENULINKMANAGE_FUNCTION, menuLink.getId(), menuLink.getName(), user.getId(), user.getRealname(),getRequest());
				}
			}
		}
		
		return SUCCESS;
	}
	
	public String checkMenuLinkName() {
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		menuLink = menuLinkMgr.getMenuLinkByName(linkUrl);
		if(menuLink != null){
			result = "succ";
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	public MenuLink getMenuLink() {
		return menuLink;
	}

	public void setMenuLink(MenuLink menuLink) {
		this.menuLink = menuLink;
	}
	
	public List<MenuLink> getMenuLinks() {
		return menuLinks;
	}

	public void setMenuLinks(List<MenuLink> menuLinks) {
		this.menuLinks = menuLinks;
	}

	public MenuLinkPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(MenuLinkPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getMenuLinkIndexs() {
		return menuLinkIndexs;
	}

	public void setMenuLinkIndexs(String menuLinkIndexs) {
		this.menuLinkIndexs = menuLinkIndexs;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
