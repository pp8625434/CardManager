package com.manage.cache;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.base.util.Utils;
//import com.base.constant.CacheConstants;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterFactory;
import com.manage.org.model.Org;
import com.manage.org.service.OrgManager;
/**
 * 
 * wyp
 * org js
 *
 */
	public class OrgTreeData {
	public static Map<Integer,List<Org>> treeOrgMap;
	public static Map<Integer, Org> orgMap;
	
	public static List<Org> sqList; //商圈 

	@SuppressWarnings("unchecked")
	public static Map<Integer,List<Org>> getTreeOrgMap(){
	//	CacheRedisManager cacheRedisMgr = (CacheRedisManager) SpringContextHolder.getBean(CacheConstants.MANAGERBEAN_NAME);
	//	
	//	////////////
	//	if(BaseConfigHolder.getCacheFlag()){
	//		treeOrgMap = cacheRedisMgr.getMapList(CacheConstants.TREEORGMAP);
	//	}
		
		if(null == treeOrgMap || treeOrgMap.size() == 0){
			setTreeOrgMap();
		}
		return treeOrgMap;
	}
	
	@SuppressWarnings("unchecked")
	public static Map<Integer, Org> getOrgMap(){
	//	CacheRedisManager cacheRedisMgr = (CacheRedisManager) SpringContextHolder.getBean(CacheConstants.MANAGERBEAN_NAME);
		
	//	////////////
	//	if(BaseConfigHolder.getCacheFlag()){
	//		orgMap = cacheRedisMgr.getMap(CacheConstants.ORGMAP);
	//	}
		
		if(null == orgMap || orgMap.size() == 0 ){
			setTreeOrgMap();
		}
		return orgMap;
	}
	
	@SuppressWarnings("unchecked")
	public static void  setTreeOrgMap(){
		treeOrgMap = new TreeMap<Integer,List<Org>>();
		orgMap = new TreeMap<Integer,Org>();
		OrgManager oManger = (OrgManager) SpringContextHolder
		.getBean(Org.class);
	//	Filter filter = FilterFactory.getSimpleFilter("parent", 0,
	//			Filter.OPERATOR_EQ);
	//	
	//	List<Org> firstLevelList = oManger.getObjects(filter);
	//	if (!Utils.isNullOrEmpty(firstLevelList)) {
	//		
	//		treeOrgMap.put(0l, firstLevelList);
	//		Filter filter1;
	//		List<Org> orgList;
	//		for (Org first : firstLevelList) {
	//			filter1 = FilterFactory.getSimpleFilter("parent",
	//					first.getId(), Filter.OPERATOR_EQ);
	//			orgList = oManger.getObjects(filter1);
	//			treeOrgMap.put(first.getId().longValue(), orgList);
	//		}
	//	}
		//
		Filter filter =  FilterFactory.getSimpleFilter("deleted", 0);
		List<Org> orglist = oManger.getObjects(filter);
		if(!Utils.isNullOrEmpty(orglist)){
			for(int i=0;i<orglist.size();i++){
				Org temp = orglist.get(i);
				orgMap.put(temp.getId(), temp);
				List<Org> orglist1 = treeOrgMap.get(temp.getParent());
				if(orglist1 == null){
					orglist1 = new ArrayList<Org>();
					orglist1.add(temp);
					treeOrgMap.put(temp.getParent(), orglist1);
				}else{
					orglist1.add(temp);
					treeOrgMap.put(temp.getParent(), orglist1);
				}
			}
		}
		
		////////////
	//	if(BaseConfigHolder.getCacheFlag()){
	//		CacheRedisManager cacheRedisMgr = (CacheRedisManager) SpringContextHolder.getBean(CacheConstants.MANAGERBEAN_NAME);
	//		cacheRedisMgr.setMapList(CacheConstants.TREEORGMAP, treeOrgMap);
	//		cacheRedisMgr.setMap(CacheConstants.ORGMAP, orgMap);
	//	}
	}
	
	/**
	 * 获得商圈列表
	 * @return
	 */
	public static List<Org> getSQList(){
		if(sqList== null && sqList.size() ==0){
			 setSQList();
		}
		return sqList;
	}
	
	public static void setSQList(){
		sqList = new ArrayList<Org>();
		OrgManager oManger = (OrgManager) SpringContextHolder.getBean(Org.class);
		Filter filter =  FilterFactory.getSimpleFilter("deleted", 0);
		List<Org> orglist = oManger.getObjects(filter);
		for (Org org : orglist) {
			if(org.getOrgType().equals("1")){
				sqList.add(org);
			}
		}
	}
}
