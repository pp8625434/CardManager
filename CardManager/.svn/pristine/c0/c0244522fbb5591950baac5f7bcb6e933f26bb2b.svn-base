package com.base.framework.security.service;

import java.util.List;

import com.base.framework.security.model.RoleMenuLink;
import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;

import com.base.framework.security.model.Role;

public interface RoleManager extends Manager{
    
    public void saveRole(Role role);

    public void removeRoleById(Integer id);

    public Role getRoleById(Integer id);

    public List<Role> getRoleList(PageInfo pageInfo);
    
    public void saveRoleAndRoleMenuLink(Role role, List<RoleMenuLink> roleMenuLinks, String[] indexs);
    
    public Role getRoleByName(String name);
    
}
