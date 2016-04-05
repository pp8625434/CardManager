package com.manage.user.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.manage.user.model.User;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.UserRole;
import com.base.framework.service.Manager;

public interface UserManager extends Manager{
    
    public void saveUser(User user);

    public void removeUserById(Integer id);

    public User getUserById(Integer id);

    public List<User> getUserList(PageInfo pageInfo);
    
    public void updateUser(User user);

	public List<Role> getRoleList();

	public List<UserRole> getUserRoleList(Integer userid);

	public List getObjectBySql(String sql);
	
	public User getUserByName(String userName,String userPassWord);

	public List<User> getUserInOrgId(String orgid);
	
	/** 获取部门下的所用用户（已开通的、未过期）
	 * @param orgid
	 * @return
	 */
	public List<User> getUserInOrgIdNew(String orgid);
	
	 public List<Object> getUserRole(Integer userid);
	
	 /**
	  * 删除角色表中，该用户信息
	  * @param id
	  */
	public void removeUserRoleByUserId(Integer id);
	
	

	public int getPassById(Integer userid, String password);
	
	

}
