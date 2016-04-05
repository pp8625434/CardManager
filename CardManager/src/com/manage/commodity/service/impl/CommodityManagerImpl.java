package com.manage.commodity.service.impl;

import com.base.framework.service.impl.ManagerImpl;
import com.manage.commodity.dao.CommodityDao;
import com.manage.commodity.model.Commodity;
import com.manage.commodity.service.CommodityManager;


public class CommodityManagerImpl extends ManagerImpl implements CommodityManager{

	/**
	 *@see 更新商品状态
	 *@author GGM
	 *@date	6:34:23 PM
	 */
	public void updateWareState(Commodity ware) {
		((CommodityDao)dao).updateWareState(ware);
		
	}
}
