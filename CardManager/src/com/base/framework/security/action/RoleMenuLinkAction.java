package com.base.framework.security.action;

import java.util.List;

import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.struts.BaseAction;

import com.base.framework.security.action.info.UserRolePageInfo;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.UserRole;
import com.base.framework.security.service.RoleManager;
import com.base.framework.security.service.UserRoleManager;

public class RoleMenuLinkAction extends BaseAction{
	
	private UserRole userRole;
	private UserRolePageInfo pageInfo;
	private List<UserRole> userRoles;
	private String orderIndexs;
	
	public String userRoleList() throws Exception {
		UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
		pageInfo = pageInfo == null ? new UserRolePageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		
		userRoles = userRoleMgr.getUserRoleList(sarchPageInfo);
		
		return SUCCESS;	
	}
	
	public String saveUserRole() throws Exception {
		UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
		userRoleMgr.saveUserRole(userRole);
		return SUCCESS;
	}
	
	public String removeUserRole() throws Exception {
		UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
		userRoleMgr.removeUserRoleById(userRole.getId());
		return SUCCESS;
	}
	
	public String viewUserRole() throws Exception {
		UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
		userRole = userRoleMgr.getUserRoleById(userRole.getId());
		return SUCCESS;
	}
	
	public String removeAllRole() throws Exception {
		
		UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
		
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer userRoleid = new Integer( ids[i] );
				userRoleMgr.removeUserRoleById(userRoleid);
				}
			}
		}
		
		return SUCCESS;
	}
	
	
	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}
	
	public List<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(List<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	public UserRolePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(UserRolePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}	
}
