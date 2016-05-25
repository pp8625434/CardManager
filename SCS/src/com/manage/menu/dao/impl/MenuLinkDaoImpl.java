package com.manage.menu.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.menu.dao.MenuLinkDao;
import com.manage.menu.model.BMenuLink;
import com.manage.menu.model.MenuLink;

public class MenuLinkDaoImpl extends DaoImpl implements MenuLinkDao{

	
	
	public List<MenuLink> getMenuLinkByRole(Integer roleId){
		
		String queryString = " select new com.manage.menu.model.MenuLink " +
		"  (  m.id ,m.displayRef,  m.linkUrl, m.orderNum, m.menu)  "
	+"   from MenuLink m where m.id in (select t.menuLink from RoleMenuLink t where t.role = ? ) and m.menuLinkType = 1 order by m.orderNum asc ";
		/*
    	String queryString = " select new com.base.framework.security.model.RoleMenuLink " +
		" (  rml.id, rml.role, rml.menuLink ) "t	+
	"  from RoleMenuLink rml where  rml.role in ( ? )  ";
		*/
	List<MenuLink> list = (List<MenuLink>)getHibernateTemplate().find(queryString,roleId);
    	return (list == null || list.size()<1 ) ? null : list;
	/*
	select m.* from  ulms_menulink m  where 
	 m.id in (select t.menulink  from  ulms_rolemenulink t where  t.role = 1 )  order by ordernum asc ;

	select m.* from  ulms_menulink m  ,ulms_rolemenulink t where 
	  t.menulink = m.id and   t.role = 1   ;
	*/
	}

	@Override
	public MenuLink getMenuLinkByName(String linkUrl) {
		String hql =  "from com.manage.menu.model.MenuLink  where linkUrl='"+linkUrl+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (MenuLink)list.get(0);
		}
		return null;
	}
	
}
