package com.base.framework.security.action.info;

import java.util.List;

import com.base.framework.security.model.RoleMenuLink;

public class RoleMenuLinkButtonInfo {
	
	private RoleMenuLink roleMenuLink;
	
	private List<RoleMenuLink> roleMenuLinkList;
	
	public RoleMenuLink getRoleMenuLink() {
		return roleMenuLink;
	}

	public void setRoleMenuLink(RoleMenuLink roleMenuLink) {
		this.roleMenuLink = roleMenuLink;
	}

	public List<RoleMenuLink> getRoleMenuLinkList() {
		return roleMenuLinkList;
	}

	public void setRoleMenuLinkList(List<RoleMenuLink> roleMenuLinkList) {
		this.roleMenuLinkList = roleMenuLinkList;
	}
	
}
