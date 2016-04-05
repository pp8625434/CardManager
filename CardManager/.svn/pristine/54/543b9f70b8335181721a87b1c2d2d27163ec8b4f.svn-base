package com.manage.creditrank.service.impl;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.creditrank.dao.CreditRankDao;
import com.manage.creditrank.model.CreditRank;
import com.manage.creditrank.service.CreditRankManager;
import com.manage.enumeration.dao.EnumerationValueDao;

public class CreditRankManagerImpl extends ManagerImpl implements CreditRankManager{


	@Override
	public Integer findAllCreditRankNum(String realname,String cellphone) throws Exception {
		
		return ((CreditRankDao)dao).findAllCreditRankNum(realname,cellphone);
	}

	@Override
	public List<CreditRank> findCreditRankList(int startRowPosition,int endRowPosition,String realname,String cellphone) {
		
		return ((CreditRankDao)dao).findCreditRankList(startRowPosition,endRowPosition,realname,cellphone);
	}

}
