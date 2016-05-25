package com.base.framework.security.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;

import com.base.framework.security.model.UserRole;

public interface UserRoleManager extends Manager{
    
    public void saveUserRole(UserRole userRole);

    public void removeUserRoleById(Integer id);

    public UserRole getUserRoleById(Integer id);

    public List<UserRole> getUserRoleList(PageInfo pageInfo);
    
    public List<UserRole> getRoleListByUser(Integer userId);
    
}
