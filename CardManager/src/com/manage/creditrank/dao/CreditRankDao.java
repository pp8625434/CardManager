package com.manage.creditrank.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.creditrank.model.CreditRank;

public interface CreditRankDao extends Dao{


	
	/**
	 * 获得总数量
	 * @return
	 * @throws Exception
	 */
	public Integer findAllCreditRankNum(String realname,String cellphone) throws Exception;

	public List<CreditRank> findCreditRankList(int startRowPosition,int endRowPosition,String realname,String cellphone);

}
