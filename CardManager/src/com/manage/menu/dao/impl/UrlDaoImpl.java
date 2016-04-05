package com.manage.menu.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.menu.dao.UrlDao;

public class UrlDaoImpl extends DaoImpl  implements UrlDao{
	
	/**
	 * 按照角色Id获得按角色拥有的按钮ID
	 * @param roleId
	 * @return
	 */
	public List<String> getUrlByRole(final Integer roleId){
    	return (List<String>) getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String queryString = " select " +
				"   distinct u.mlurl    "
			    +"  from Url u where u.mlid in (select t.menuLink from RoleMenuLink t where t.role = ? ) ";
					Query query = session.createQuery(queryString);
					query.setInteger(0, roleId);
				return query.list();
			}
		});
	}
}
