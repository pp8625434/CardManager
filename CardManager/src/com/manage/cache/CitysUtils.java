package com.manage.cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.base.framework.SpringContextHolder;
import com.base.memcached.MemcachedUtils;
import com.base.util.Utils;
import com.manage.citys.model.Area;
import com.manage.citys.model.City;
import com.manage.citys.model.Province;
import com.manage.citys.model.Region;
import com.manage.citys.service.CityManager;

public class CitysUtils {
	
	/**
	 * @author LLJ
	 * @date Sep 13, 2015 4:19:12 PM
	 * @param code
	 * @return
	 * @throws Exception
	 * @see 根据地区编码获得名称 如：保定市
	 */
	public static String getRegionNameByCode(String code) throws Exception{
		if(Utils.isNotNullOrEmpty(code)){
			String temp = getRegionCodeMap().get(code);
			if(temp != null){
				return temp;
			}else{
				return "";
			}
		}
		return "";
	}
	
	/**
	 * @author LLJ
	 * @date Sep 13, 2015 4:20:35 PM
	 * @param code
	 * @return
	 * @throws Exception
	 * @see 根据地区编码获得名称 如：河北省 石家庄 长安区 -- 会把所有父地区的名字一块返回
	 */
	public static String getAllRegionNameByCode(String code) throws Exception{
		if(Utils.isNotNullOrEmpty(code)){
			HashMap<String, String> regionCodeMap = getRegionCodeMap();
			if(code.length()==2){
				String temp = regionCodeMap.get(code);
				if(temp != null){
					return temp;
				}else{
					return "";
				}
			}else if(code.length()==4){
				String temp1 = regionCodeMap.get(code.substring(0, 2));
				String temp2 = regionCodeMap.get(code.substring(0, 4));
				if(temp1==null){
					temp1 = "";
				}
				if(temp2==null){
					temp2 = "";
				}
				return temp1+" "+temp2;
			}else if(code.length()==8){
				String temp1 = regionCodeMap.get(code.substring(0, 2));
				String temp2 = regionCodeMap.get(code.substring(0, 4));
				String temp3 = regionCodeMap.get(code.substring(0, 8));
				if(temp1==null){
					temp1 = "";
				}
				if(temp2==null){
					temp2 = "";
				}
				if (temp3==null) {
					temp3 = "";
				}
				return temp1+" "+temp2+" "+temp3;
			}
		}
		return "";
	}
	
	/**
	 * @author LLJ
	 * @date Sep 13, 2015 4:11:16 PM
	 * @return
	 * @throws Exception
	 * @see 获得所有地区列表
	 */
	public static List<Region> getRegionList() throws Exception{
		List<Region> regionList = null;
		String temp = (String)MemcachedUtils.get("regionList");
		if(Utils.isNullOrEmpty(temp)){
			setRegion();
			temp = (String)MemcachedUtils.get("regionList");
		}
		regionList = JSON.parseArray(temp,Region.class);
		return regionList;
	}
	
	/**
	 * @author LLJ
	 * @date Sep 13, 2015 4:14:59 PM
	 * @return
	 * @throws Exception
	 * @see 获得所有编码与名称对应map
	 */
	public static HashMap<String, String> getRegionCodeMap() throws Exception{
		HashMap<String, String> regionCodeMap = null;
		String temp = (String)MemcachedUtils.get("regionCodeMap");
		if(Utils.isNullOrEmpty(temp)){
			setRegion();
			temp = (String)MemcachedUtils.get("regionCodeMap");
		}
		regionCodeMap = JSON.parseObject(temp, new TypeReference<HashMap<String, String>>(){});
		return regionCodeMap;
	}
	
	/**
	 * @author LLJ
	 * @date Sep 13, 2015 4:16:48 PM
	 * @return
	 * @see 获得父id与子列表的map
	 */
	public static HashMap<Integer, List<Region>> getRegionMap() throws Exception{
		HashMap<Integer, List<Region>> regionMap = null;
		String temp = (String)MemcachedUtils.get("regionMap");
		if(Utils.isNullOrEmpty(temp)){
			setRegion();
			temp = (String)MemcachedUtils.get("regionMap");
		}
		regionMap = JSON.parseObject(temp, new TypeReference<HashMap<Integer, List<Region>>>(){});
		return regionMap;
	}
	
	/**
	 * @author LLJ
	 * @date Sep 13, 2015 3:33:40 PM
	 * @throws Exception
	 * @see 重置地区缓存
	 */
	public static void setRegion() throws Exception{
		CityManager cityManager = (CityManager)SpringContextHolder.getBean(Region.class);
		List<Region> regionList = cityManager.getRegionList();
		HashMap<String, String> regionCodeMap = new HashMap<String, String>();
		HashMap<Integer, List<Region>> regionMap = new HashMap<Integer, List<Region>>();
		if(regionList != null && regionList.size()>0){
			List<Region> templist = null;
			for(Region region : regionList){
				regionCodeMap.put(region.getRtagid(), region.getRname());
				templist = null;
				if(regionMap.get(region.getParentid())!=null){
					templist = regionMap.get(region.getParentid());
					templist.add(region);
					regionMap.put(region.getParentid(), templist);
				}else{
					templist = new ArrayList<Region>();
					templist.add(region);
					regionMap.put(region.getParentid(), templist);
				}
			}
			//把取出来的数据放入memcached
			String temp = (String)MemcachedUtils.get("regionList");
			if(temp != null){
				MemcachedUtils.replace("regionList", JSON.toJSONString(regionList));
				MemcachedUtils.replace("regionCodeMap", JSON.toJSONString(regionCodeMap));
				MemcachedUtils.replace("regionMap", JSON.toJSONString(regionMap));
			}else{
				MemcachedUtils.add("regionList", JSON.toJSONString(regionList));
				MemcachedUtils.add("regionCodeMap", JSON.toJSONString(regionCodeMap));
				MemcachedUtils.add("regionMap", JSON.toJSONString(regionMap));
			}
		}
	}

}
