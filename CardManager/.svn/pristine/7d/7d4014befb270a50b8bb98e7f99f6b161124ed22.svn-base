package com.manage.order.service.impl;

import java.util.List;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.order.dao.OrderBillDao;
import com.manage.order.model.OrderBill;
import com.manage.order.service.OrderBillManager;

public class OrderBillManagerImpl extends ManagerImpl implements OrderBillManager{

	@Override
	public List<OrderBill> getOrderBillById(Integer oid) throws Exception {
		
		return ((OrderBillDao)dao).getOrderBillById(oid);
	}

}
