package com.manage.card.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.card.dao.CardDao;
import com.manage.card.model.Card;

public class CardDaoImpl extends DaoImpl implements CardDao{

	
	/* (non-Javadoc) 验证卡号重复
	 * @see com.manage.card.dao.CardDao#getCardByCardnum(java.lang.String)
	 */
	public Card getCardByCardnum(String cardnum) throws Exception {
		String hql = "from com.manage.card.model.Card c where c.cardnum='"+cardnum+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Card)list.get(0);
		}
		return null;
	}

	
	/* (non-Javadoc) 验证身份证号码重复
	 * @see com.manage.card.dao.CardDao#getCardByIcard(java.lang.String)
	 */
	public Card getCardByIcard(String identitycard) throws Exception {
		String hql = "from com.manage.card.model.Card c where c.identitycard='"+identitycard+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Card)list.get(0);
		}
		return null;
	}

}
