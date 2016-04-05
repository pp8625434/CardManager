package com.manage.commodity.dao.impl;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.commodity.dao.CommodityDao;
import com.manage.commodity.model.Commodity;

public class CommodityDaoImpl extends DaoImpl implements CommodityDao{

	/**
	 *@see 更新商品状态
	 *@author GGM
	 *@date	6:34:23 PM
	 */
	public void updateWareState(Commodity ware) {
		getHibernateTemplate().update(ware);
		
	}

}
