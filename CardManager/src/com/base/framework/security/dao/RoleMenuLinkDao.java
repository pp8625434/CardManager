package com.base.framework.security.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.base.framework.security.model.RoleMenuLink;

public interface RoleMenuLinkDao extends Dao{
	
	
    public List<RoleMenuLink> getRoleMenuLinkByRole(String roleIds);
    
    public List<RoleMenuLink> getRoleMenuLinkByUser(Integer userId);
    
	
}
