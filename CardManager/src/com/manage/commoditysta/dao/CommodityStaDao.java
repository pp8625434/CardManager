package com.manage.commoditysta.dao;

import java.util.HashMap;
import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.commoditysta.model.CommoditySta;




public interface CommodityStaDao extends Dao {
	
	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 商品统计
	 */
	public List<CommoditySta> getCommoditySta(HashMap<String, String> map);

}
