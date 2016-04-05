package com.manage.money.service.impl;


import com.base.framework.service.impl.ManagerImpl;
import com.manage.money.dao.MoneyLogDao;
import com.manage.money.service.MoneyLogManager;


public class MoneyLogManagerImpl extends ManagerImpl implements MoneyLogManager{

	@Override
	public Integer updateCardMoney(String cardnum, Double money) throws Exception{
		
		return ((MoneyLogDao)dao).updateCardMoney(cardnum,money);
	}

	

}
