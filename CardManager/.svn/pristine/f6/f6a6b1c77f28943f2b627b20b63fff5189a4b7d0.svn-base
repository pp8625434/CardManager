package com.manage.recharge.service.impl;


import com.base.framework.service.impl.ManagerImpl;
import com.manage.recharge.dao.RechargeDao;
import com.manage.recharge.service.RechargeManager;


public class RechargeManagerImpl extends ManagerImpl implements RechargeManager{

	@Override
	public Integer updateCardMoney(String cardnum, Double money) throws Exception{
		
		return ((RechargeDao)dao).updateCardMoney(cardnum,money);
	}

	

}
