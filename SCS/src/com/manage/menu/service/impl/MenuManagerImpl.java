package com.manage.menu.service.impl;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.menu.dao.MenuDao;
import com.manage.menu.model.Menu;
import com.manage.menu.service.MenuManager;

public class MenuManagerImpl extends ManagerImpl implements MenuManager{
    
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
    
    public void saveMenu(Menu Menu){
    	saveObject(Menu);
    
    }

    public void removeMenuById(Integer id){
    	removeObjectById(id);
    	
    }

    public Menu getMenuById(Integer id){
   		return (Menu) getObjectById(id);
    }

    public List<Menu> getMenuList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

	@Override
	public Menu getMenuByName(String name) {
		
		return  ((MenuDao)dao).getMenuByName(name);
	}
}
