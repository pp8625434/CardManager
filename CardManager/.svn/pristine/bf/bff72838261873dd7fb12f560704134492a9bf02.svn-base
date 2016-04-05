package com.manage.menu.service;

import java.util.List;

import com.manage.menu.model.BMenuLink;
import com.manage.menu.model.MenuLink;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;

public interface MenuLinkManager extends Manager{
    
    public void saveMenuLink(MenuLink menuLink);

    public void removeMenuLinkById(Integer id);

    public MenuLink getMenuLinkById(Integer id);

    public List<MenuLink> getMenuLinkList(PageInfo pageInfo);
    
    
	public List<MenuLink> getMenuLinkByRole(Integer roleId);

	public MenuLink getMenuLinkByName(String linkUrl);
	
}
