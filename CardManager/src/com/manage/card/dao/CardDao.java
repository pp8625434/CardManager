package com.manage.card.dao;

import com.base.framework.dao.Dao;
import com.manage.card.model.Card;

public interface CardDao extends Dao{

	/**
	 * @see 验证卡号重复
	 * @author GGM
	 * @date Nov 25, 2015 2:46:57 PM
	 */
	public Card getCardByCardnum(String cardnum)throws Exception;

	/**
	 * @see 验证身份证号码重复
	 * @author GGM
	 * @date Nov 26, 2015 9:34:41 AM
	 */
	public Card getCardByIcard(String identitycard)throws Exception;

}
