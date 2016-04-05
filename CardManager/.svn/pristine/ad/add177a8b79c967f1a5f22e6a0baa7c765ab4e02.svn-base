package com.manage.creditrank.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;
import com.manage.creditrank.model.CreditRank;

public interface CreditRankManager extends Manager{
	
	public Integer findAllCreditRankNum(String realname,String cellphone) throws Exception;
	
	/**
	 * @param startRowPosition
	 * @param endRowPosition
	 * @param realname
	 * @param cellphone
	 * @return
	 */
	public List<CreditRank> findCreditRankList(int startRowPosition,int endRowPosition,String realname,String cellphone);

}
