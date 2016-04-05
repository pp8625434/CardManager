package com.manage.merchant.dao;

import com.base.framework.dao.Dao;
import com.manage.merchant.model.Merchant;

public interface MerchantDao extends Dao{

	/**
	 * @see 验证商铺名称重复
	 * @author GGM
	 * @date Nov 24, 2015 4:58:45 PM
	 */
	public Merchant getMerchantByMname(String mname)throws Exception;

	/**
	 * @author DL
	 * @date Nov 25, 2015
	 * @param 
	 * @return
	 * @see 更新商品表
	 */
	public void updateCommodity(int mid, String mname) throws Exception;
}
