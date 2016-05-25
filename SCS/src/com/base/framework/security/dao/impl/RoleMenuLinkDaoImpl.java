package com.base.framework.security.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;

import com.base.framework.security.dao.RoleMenuLinkDao;
import com.base.framework.security.model.RoleMenuLink;
import com.manage.user.model.User;

public class RoleMenuLinkDaoImpl extends DaoImpl implements RoleMenuLinkDao{

	

    public List<RoleMenuLink> getRoleMenuLinkByRole(String roleIds){
    	
    	/*

select * from ULMS_ROLEMENULINK rml,MenuLink ml where rml.menuLink = ml.id

and role in (select role from ULMS_USERROLE where securityuser = 1987 ) 

order by ml.orderNum asc 

select rml.* from  ULMS_ROLEMENULINK rml ,ULMS_USERROLE ur 
where rml.role = ur.role and ur.securityuser = 1987
    	  
    select rml.* from  ULMS_ROLEMENULINK rml ,ULMS_USERROLE ur ,ulms_menuLink ml
where rml.role = ur.role and rml.menuLink = ml.id and ur.securityuser = 1987	  
    	 */
    	
    	String queryString = " select new com.base.framework.security.model.RoleMenuLink " +
		" (  rml.id, rml.role, rml.menuLink ) "
	+"  from RoleMenuLink rml ,MenuLink ml where  rml.menuLink  = ml.id  and  rml.role in ( ? )  order by ml.orderNum asc";
    		List<RoleMenuLink> list = (List<RoleMenuLink>)getHibernateTemplate().find(queryString,roleIds);
    		return (list == null || list.size()<1 ) ? null : list;
    	
    }
    
    public List<RoleMenuLink> getRoleMenuLinkByUser(Integer userId){
    	
		/*
		String queryString = " select new com.base.framework.security.model.RoleMenuLink " +
				" (  rml.id, rml.role, rml.menuLink ) "
			+"  from RoleMenuLink rml ,MenuLink ml where  rml.menuLink  = ml.id  and  rml.role in ( ? )  order by ml.orderNum asc";
		*/
	/*

select * from ULMS_ROLEMENULINK rml,MenuLink ml where rml.menuLink = ml.id
and role in (select role from ULMS_USERROLE where securityuser = 1987 ) 
order by ml.orderNum asc 

select new com.base.framework.security.model.RoleMenuLink " 
		+ " (  rml.id, rml.role, rml.menuLink ) "
		+ "  from RoleMenuLink rml, ulms_MenuLink ml where rml.menuLink = ml.id  and "
		+ "  rml.role in (select role from UserRole ur where ur.securityuser = ? )  order by ml.orderNum asc

select rml.* from  ULMS_ROLEMENULINK rml ,ULMS_USERROLE ur 
where rml.role = ur.role and ur.securityuser = 1987
	  
select rml.* from  ULMS_ROLEMENULINK rml ,ULMS_USERROLE ur ,ulms_menuLink ml
where rml.role = ur.role and rml.menuLink = ml.id and ur.securityuser = 1987	  
	 */
	
		String queryString = " select  new com.base.framework.security.model.RoleMenuLink " 
		+ " (  rml.id, rml.role, rml.menuLink ) "
		+ "  from RoleMenuLink rml, MenuLink ml where rml.menuLink = ml.id   "
		+ "  and rml.role in ( select ur.role  from UserRole ur where ur.securityUser = ? ) order by ml.orderNum asc";
		List<RoleMenuLink> list = (List<RoleMenuLink>)getHibernateTemplate().find(queryString,userId);//;
		return (list == null || list.size()<1 ) ? null : list;
	
}
    
}
