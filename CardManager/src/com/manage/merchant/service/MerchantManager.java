package com.manage.merchant.service;

import com.base.framework.service.Manager;
import com.manage.merchant.model.Merchant;

public interface MerchantManager extends Manager{

	/**
	 * @see 验证商铺名称重复
	 * @author GGM
	 * @date Nov 24, 2015 4:57:12 PM
	 */
	public Merchant getMerchantByMname(String mname)throws Exception;
	
	/**
	 * @author DL
	 * @date Nov 25, 2015
	 * @param 
	 * @return
	 * @see 更新商品表
	 */
	public void updateCommodity(int mid,String mname) throws Exception;

}
