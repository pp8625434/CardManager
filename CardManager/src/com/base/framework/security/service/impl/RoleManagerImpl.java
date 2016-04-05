package com.base.framework.security.service.impl;

import java.util.List;

import com.base.util.Utils;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.security.dao.RoleDao;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.RoleMenuLink;
import com.base.framework.security.service.RoleManager;
import com.base.framework.security.service.RoleMenuLinkManager;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.menu.model.MenuLink;
import com.manage.menu.service.MenuLinkManager;

public class RoleManagerImpl extends ManagerImpl implements RoleManager{
    
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
    
    public void saveRole(Role Role){
    	saveObject(Role);
    
    }

    public void removeRoleById(Integer id){
    	removeObjectById(id);
    	
    }

    public Role getRoleById(Integer id){
   		return (Role) getObjectById(id);
    }

    public List<Role> getRoleList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }
    
    /* (non-Javadoc)
     */
    @SuppressWarnings("unchecked")
	public void saveRoleAndRoleMenuLink(Role role, List<RoleMenuLink> roleMenuLinks, String[] indexs){
    	
    	this.saveRole(role);
    	RoleMenuLinkManager roleMenuLinkMgr = (RoleMenuLinkManager)SpringContextHolder.getBean(RoleMenuLink.class);
    	//ɾ��ԭ���� roleMenuLink 
    	if(role.getId() != null){
    		//Filter filter = FilterFactory.getSimpleFilter("role.id", role.getId(), Filter.OPERATOR_EQ);
    		//List<RoleMenuLink> delRoleMenuLinks = roleMenuLinkMgr.getObjects(filter);
    		//���� hibernate hql ȥ����ݣ����� �ȱ�update ��������ѯ�������
    		//List<RoleMenuLink> delRoleMenuLinks = roleMenuLinkMgr.getRoleMenuLinkListByRole(role.getId());
    		
    	}
    	
		if(Utils.isNotNullOrEmpty(roleMenuLinks)){
			for (RoleMenuLink roleMenuLink : roleMenuLinks) {
	    		if(null != roleMenuLink && null != roleMenuLink.getId() && roleMenuLink.getId()>0 ){
	    			roleMenuLinkMgr.removeObject(roleMenuLink);
	    		}
			}
		}
    	
    	if(indexs == null)
    		return;
    	
    	MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
    	for (int i = 0; i < indexs.length; i++) {
    		RoleMenuLink roleMenuLink = roleMenuLinks.get(Integer.parseInt(indexs[i].trim()));
    		//MenuLink menuLink = (MenuLink)menuLinkMgr.getObjectById(roleMenuLink.getMenuLink().getId());
    		RoleMenuLink persistent = new RoleMenuLink();
    		if(null != roleMenuLink && null != roleMenuLink.getMenuLinkModel()){
    			persistent.setMenuLink(roleMenuLink.getMenuLinkModel().getId());
    		}
    		persistent.setRole(role.getId());
    		roleMenuLinkMgr.saveRoleMenuLink(persistent);
    	}
    	
    }

	@Override
	public Role getRoleByName(String name) {
		// TODO Auto-generated method stub
		return ((RoleDao)dao).getRoleByName(name);
	}
    
}
