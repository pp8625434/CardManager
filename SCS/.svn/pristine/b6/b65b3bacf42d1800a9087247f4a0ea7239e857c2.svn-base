package com.manage.user.service.impl;

import java.util.List;

import com.manage.user.dao.UserDao;
import com.base.framework.paging.PageInfo;
import com.manage.user.model.User;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.UserRole;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.user.service.UserManager;

public class UserManagerImpl extends ManagerImpl implements UserManager{
    
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
    
    public void saveUser(User user){
    	saveObject(user);
    
    }

    public void removeUserById(Integer id){
    	removeObjectById(id);
    	
    }

    public User getUserById(Integer id){
   		return (User) getObjectById(id);
    }

    public List<User> getUserList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }
    
    public void updateUser(User user) {
    	((UserDao)dao).updateUser(user);
    }
    
    public List<Role> getRoleList() {
    	return ((UserDao)dao).getRoleList();
    }
    
    public List<UserRole> getUserRoleList(Integer userid) {
    	return ((UserDao)dao).getUserRoleList(userid);
    }
    
    public List getObjectBySql(String sql) {
    	return ((UserDao)dao).getObjectBySql(sql);
    }
    
    public User getUserByName(String userName,String userPassWord){
   		return ((UserDao) dao).getUserByName(userName,userPassWord);
    }
    
    public List<User> getUserInOrgId(String orgid) {
    	return ((UserDao) dao).getUserInOrgId(orgid);
    }
    
    /* (non-Javadoc) 获取部门下的所用用户（已开通的、未过期）
     * @see com.manage.user.service.UserManager#getUserInOrgIdNew(java.lang.String)
     */
    public List<User> getUserInOrgIdNew(String orgid){
    	return ((UserDao) dao).getUserInOrgIdNew(orgid);
    }
    
    public List<Object> getUserRole(Integer userid){
    	return ((UserDao) dao).getUserRole(userid);
 
    }

	@Override
	public int getPassById(Integer userid, String password) {
		int count = ((UserDao)dao).getPassById(userid,password);
		return count;
	}	


	@Override
	public void removeUserRoleByUserId(Integer id) {
		((UserDao)dao).removeUserRoleByUserId(id);
		
	}

	@Override
	public List getUserRoleList(String ids) throws Exception {
		
		return ((UserDao) dao).getUserRoleList(ids);
	}

		
}
