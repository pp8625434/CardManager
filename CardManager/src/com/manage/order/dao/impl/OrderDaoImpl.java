package com.manage.order.dao.impl;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.order.dao.OrderDao;

public class OrderDaoImpl extends DaoImpl implements OrderDao{

//	@Override
//	public String getCnameByCid(final Integer cid) {
//		return (String) (getHibernateTemplate().execute(new HibernateCallback() {
//			public Object doInHibernate(Session session)
//					throws HibernateException, SQLException {
//				String hql = " select cname  from  c_commodity where id ="+cid+" ";
//				Query query=session.createSQLQuery(hql);
//				if(query.uniqueResult()!=null){					
//					return query.uniqueResult();
//				}else{
//					return null;
//				}
//			}
//		}));
//	}

}
