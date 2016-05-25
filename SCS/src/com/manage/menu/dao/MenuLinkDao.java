package com.manage.menu.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.menu.model.MenuLink;

public interface MenuLinkDao extends Dao{
	
	public List<MenuLink> getMenuLinkByRole(Integer roleId);

	public MenuLink getMenuLinkByName(String linkUrl);
	
}
