package com.manage.cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.memcached.MemcachedUtils;
import com.base.util.Utils;
import com.manage.commodity.model.Commodity;
import com.manage.commodity.service.CommodityManager;


public class CommodityCache {
	
	/**
	 * 商品列表
	 */
	
	public static Map<Integer,Commodity>  getCommodityMap() throws Exception{
		Map<Integer,Commodity> commodityMap = null;
		String temp = (String)MemcachedUtils.get("commodityList");
		if(Utils.isNullOrEmpty(temp)){
			setCommodityMap();
			temp = (String)MemcachedUtils.get("commodityList");
		}
		commodityMap = JSON.parseObject(temp,new TypeReference<Map<Integer,Commodity>>(){});
		return commodityMap;
	}

	
	public static void setCommodityMap() {
		CommodityManager cm=(CommodityManager) SpringContextHolder.getBean(Commodity.class);
		Filter filter =  FilterFactory.getSimpleFilter("isdeleted",0);
		Map<Integer,Commodity> commodityMap = new HashMap<Integer,Commodity>();
		List<Commodity> cList = cm.getObjects(filter);
		if(!Utils.isNullOrEmpty(cList)){
			for (Commodity commodity : cList) {
				commodityMap.put(commodity.getId(), commodity);
			}
			MemcachedUtils.set("commodityList", JSON.toJSONString(commodityMap));
		}
	}
	
	public static String getCname(Integer id) throws Exception{
		try {
			return getCommodityMap().get(id).getCname();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}
}
