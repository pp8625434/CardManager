package com.manage.menu.service;

import java.util.List;

import com.manage.menu.model.Menu;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;

public interface MenuManager extends Manager{
    
    public void saveMenu(Menu menu);

    public void removeMenuById(Integer id);

    public Menu getMenuById(Integer id);

    public List<Menu> getMenuList(PageInfo pageInfo);

	public Menu getMenuByName(String name);
}
