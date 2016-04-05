package com.manage.order.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.order.model.OrderBill;

public interface OrderBillManager extends Manager{

	public List<OrderBill> getOrderBillById(Integer oid)throws Exception;

}
