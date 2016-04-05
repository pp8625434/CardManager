package com.manage.money.dao.impl;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.money.dao.MoneyLogDao;


public class MoneyLogDaoImpl extends DaoImpl implements MoneyLogDao{
	@Override
	public Integer updateCardMoney( final String cardnum, final Double money) throws Exception {
		return (Integer)(getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String sql = "update c_card set money=money+"+money+" where cardnum='"+cardnum +"' and state=0";
				
				Query query=session.createSQLQuery(sql);
				return query.executeUpdate();
			}
		}));
	}
	
}
