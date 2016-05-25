package com.base.framework.security.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;

import com.base.framework.security.model.RoleMenuLink;

public interface RoleMenuLinkManager extends Manager{
    
    public void saveRoleMenuLink(RoleMenuLink roleMenuLink);

    public void removeRoleMenuLinkById(Integer id);

    public RoleMenuLink getRoleMenuLinkById(Integer id);

    public List<RoleMenuLink> getRoleMenuLinkList(PageInfo pageInfo);
    
    
    public List<RoleMenuLink> getRoleMenuLinkByRole(String roleIds);
    
    public List<RoleMenuLink> getRoleMenuLinkByUser(Integer userId);
    

}
