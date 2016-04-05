package com.manage.card.service.impl;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.card.dao.CardDao;
import com.manage.card.model.Card;
import com.manage.card.service.CardManager;

public class CardManagerImpl extends ManagerImpl implements CardManager{

	
	/* (non-Javadoc)验证卡号重复
	 * @see com.manage.card.service.CardManager#getCardByCardnum(java.lang.String)
	 */
	public Card getCardByCardnum(String cardnum) throws Exception {
		
		return ((CardDao)dao).getCardByCardnum(cardnum);
	}

	
	/* (non-Javadoc) 验证身份证号码重复
	 * @see com.manage.card.service.CardManager#getCardByIcard(java.lang.String)
	 */
	public Card getCardByIcard(String identitycard) throws Exception {
		
		return ((CardDao)dao).getCardByIcard(identitycard);
	}

}
