package com.base.framework.security.service.impl;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.security.dao.UserRoleDao;
import com.base.framework.security.model.UserRole;
import com.base.framework.security.service.UserRoleManager;
import com.base.framework.service.impl.ManagerImpl;

public class UserRoleManagerImpl extends ManagerImpl implements UserRoleManager{
    
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
    
    public void saveUserRole(UserRole UserRole){
    	saveObject(UserRole);
    
    }

    public void removeUserRoleById(Integer id){
    	removeObjectById(id);
    	
    }

    public UserRole getUserRoleById(Integer id){
   		return (UserRole) getObjectById(id);
    }

    public List<UserRole> getUserRoleList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }
    
    public List<UserRole> getRoleListByUser(Integer userId){
    	
    	return ((UserRoleDao) dao).getRoleListByUser(userId);
    	
    }
    
}
