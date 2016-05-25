package com.base.framework.js.dao.impl;

import java.sql.SQLException;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.base.framework.js.dao.JsUtilDao;

public class JsUtilDaoImpl extends DaoImpl implements JsUtilDao {

	/**
	 * 根据表名，列名，数据值判断查询的数据值是否存在于指定的表中的列里面
	 * @param tablename
	 * @param column
	 * @param cvale
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Integer getNumberByTablenameAndcolumn(final String tablename , final String column , final String cvale){
		return (Integer) (getHibernateTemplate().execute(new HibernateCallback() {
			public Integer doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql =" select count(id) as num from "+tablename+" where "+column+" = '"+cvale+"'";
				Query query=session.createSQLQuery(hql).addScalar("num", Hibernate.INTEGER);
				return (Integer) query.uniqueResult();
			}
		}));
	}
	
}
