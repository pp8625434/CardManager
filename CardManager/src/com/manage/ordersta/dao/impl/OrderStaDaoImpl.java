package com.manage.ordersta.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.springframework.orm.hibernate3.HibernateCallback;
import com.base.framework.dao.impl.DaoImpl;
import com.base.util.Utils;
import com.manage.ordersta.dao.OrderStaDao;
import com.manage.ordersta.model.OrderJson;

public class OrderStaDaoImpl extends DaoImpl implements OrderStaDao{

	@Override
	public OrderJson getOrderStaJson(final HashMap<String, String> map) {
		return (OrderJson) (getHibernateTemplate().execute(new HibernateCallback() {
			public OrderJson doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql =  "select  sum(allprice) as allprice,sum(cash) as cash,sum(money) as money,sum(paycreditmoney) as paycreditmoney from c_order where addtime between '"+map.get("bdate")+"' and '"+map.get("edate")+"' ";
				if(Utils.isNotNullOrEmpty(map.get("mid"))){
				
					hql += " and mid = "+map.get("mid")+" ";
				}
				if(Utils.isNotNullOrEmpty(map.get("orgid"))){
					hql += " and orgid like '"+map.get("orgid")+"%' ";
				}
				Query query=session.createSQLQuery(hql).setResultTransformer(Transformers.aliasToBean(OrderJson.class));
				List<OrderJson> list = (List<OrderJson>)query.list();
					if(list!=null && list.size()>0){
						return list.get(0);
					}
					return null;
			}
		}));
	}

}
