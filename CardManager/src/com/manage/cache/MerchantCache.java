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
import com.manage.merchant.model.Merchant;
import com.manage.merchant.service.MerchantManager;

public class MerchantCache {
	
	/**
	 * 商铺列表
	 */
	
	public static Map<Integer,Merchant>  getMerchantMap() throws Exception{
		Map<Integer,Merchant> merchantMap = null;
		String temp = (String)MemcachedUtils.get("merchantList");
		if(Utils.isNullOrEmpty(temp)){
			setMerchantMap();
			temp = (String)MemcachedUtils.get("merchantList");
		}
		merchantMap = JSON.parseObject(temp,new TypeReference<Map<Integer,Merchant>>(){});
		return merchantMap;
	}

	
	public static void setMerchantMap() {
		MerchantManager cm=(MerchantManager) SpringContextHolder.getBean(Merchant.class);
		Filter filter =  FilterFactory.getSimpleFilter("isdeleted",0);
		Map<Integer,Merchant> merchantMap = new HashMap<Integer,Merchant>();
		List<Merchant> mList = cm.getObjects(filter);
		if(!Utils.isNullOrEmpty(mList)){
			for (Merchant merchant : mList) {
				merchantMap.put(merchant.getId(), merchant);
			}
			MemcachedUtils.set("merchantList", JSON.toJSONString(merchantMap));
		}
	}
	
	public static String getMname(Integer id) throws Exception{
		try {
			return getMerchantMap().get(id).getMname();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "";
	}
}
