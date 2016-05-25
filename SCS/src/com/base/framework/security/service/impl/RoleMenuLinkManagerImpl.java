package com.base.framework.security.service.impl;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.security.dao.RoleMenuLinkDao;
import com.base.framework.security.model.RoleMenuLink;
import com.base.framework.security.service.RoleMenuLinkManager;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.user.dao.UserDao;

public class RoleMenuLinkManagerImpl extends ManagerImpl implements RoleMenuLinkManager{
    
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
    
    public void saveRoleMenuLink(RoleMenuLink roleMenuLink){
    	saveObject(roleMenuLink);
    }

    public void removeRoleMenuLinkById(Integer id){
    	removeObjectById(id);
    }

    public RoleMenuLink getRoleMenuLinkById(Integer id){
   		return (RoleMenuLink) getObjectById(id);
    }

    public List<RoleMenuLink> getRoleMenuLinkList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }
    
    public List<RoleMenuLink> getRoleMenuLinkByRole(String roleIds){
    	return ((RoleMenuLinkDao) dao).getRoleMenuLinkByRole(roleIds);
    }
    
    public List<RoleMenuLink> getRoleMenuLinkByUser(Integer userId){
    	return ((RoleMenuLinkDao) dao).getRoleMenuLinkByUser(userId);
    }
    
}
