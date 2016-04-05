package com.manage.order.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.order.dao.OrderBillDao;
import com.manage.order.model.OrderBill;

public class OrderBillDaoImpl extends DaoImpl implements OrderBillDao{

	@Override
	public List<OrderBill> getOrderBillById(Integer oid) throws Exception {
		String hql="from com.manage.order.model.OrderBill o where o.orderid="+oid;
		List<OrderBill> list=getHibernateTemplate().find(hql);
		if(list!=null&&list.size()>0){
			return list;
		}
		return null;
	}

}
