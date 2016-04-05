package com.manage.commodity.service;

import com.base.framework.service.Manager;
import com.manage.commodity.model.Commodity;

public interface CommodityManager extends Manager{

	/**
	 *@see 更新商品状态
	 *@author GGM
	 *@date	6:33:57 PM
	 */
	public void updateWareState(Commodity ware);
}
