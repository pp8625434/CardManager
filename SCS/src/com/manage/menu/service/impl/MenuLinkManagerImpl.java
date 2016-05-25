package com.manage.menu.service.impl;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.menu.model.BMenuLink;
import com.manage.menu.model.MenuLink;
import com.manage.menu.service.MenuLinkManager;
import com.manage.menu.dao.MenuLinkDao;

public class MenuLinkManagerImpl extends ManagerImpl implements MenuLinkManager{
    
    protected void preSaveObject(Object obj) {
        super.preSaveObject(obj);

    }

    protected void postSaveObject(Object obj) {
        super.postSaveObject(obj);

    }

    protected void preRemoveObject(Object obj) {
        super.preRemoveObject(obj);
        
    }

    protected void postRemoveObject(Object obj) {
        super.postRemoveObject(obj);
        
    }
    
    public void saveMenuLink(MenuLink MenuLink){
    	saveObject(MenuLink);
    
    }

    public void removeMenuLinkById(Integer id){
    	removeObjectById(id);
    	
    }

    public MenuLink getMenuLinkById(Integer id){
   		return (MenuLink) getObjectById(id);
    }

    public List<MenuLink> getMenuLinkList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }
    
	public List<MenuLink> getMenuLinkByRole(Integer roleId){
		
		return ((MenuLinkDao) dao).getMenuLinkByRole(roleId);
	}

	@Override
	public MenuLink getMenuLinkByName(String linkUrl) {
		
		return ((MenuLinkDao)dao).getMenuLinkByName(linkUrl);
	}
	
    
}
