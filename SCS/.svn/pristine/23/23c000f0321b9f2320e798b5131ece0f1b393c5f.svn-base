package com.manage.menu.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.menu.dao.BMenuLinkDao;
import com.manage.menu.model.BMenuLink;

public class BMenuLinkDaoImpl extends DaoImpl implements BMenuLinkDao{
	
	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<BMenuLink> getButtonLinkByRole(Integer roleId , String Type){
		String queryString = " select new com.manage.menu.model.BMenuLink " +
		"  (  m.id ,m.displayRef,  m.linkUrl, m.orderNum, m.menu,m.menulinkcss)  "
	+"   from BMenuLink m where m.id in (select t.menuLink from RoleMenuLink t where t.role = ? ) and m.menuLinkType = "+Type+" order by m.orderNum asc ";
		List<BMenuLink> list = (List<BMenuLink>)getHibernateTemplate().find(queryString,roleId);
    	return (list == null || list.size()<1 ) ? null : list;
	}
}
