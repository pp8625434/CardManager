package com.manage.enumeration.service.impl;

import java.util.LinkedHashMap;
import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.enumeration.dao.EnumerationDao;
import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.model.EnumerationValue;
import com.manage.enumeration.service.EnumerationManager;

public class EnumerationManagerImpl extends ManagerImpl implements EnumerationManager{
    
	protected List<Enumeration> enumerations;
	
	protected LinkedHashMap<String, LinkedHashMap<Integer, String>> enumeraMap;
	
	protected LinkedHashMap<Integer, EnumerationValue> enumeraValueMap;
	
    protected void preSaveObject(Object obj) {
        super.preSaveObject(obj);

    }

    protected void postSaveObject(Object obj) {
    	loadEnumeration();

    }

    protected void preRemoveObject(Object obj) {
        super.preRemoveObject(obj);
        
    }

    protected void postRemoveObject(Object obj) {
    	loadEnumeration();
        
    }
    
    public void saveEnumeration(Enumeration Enumeration){
    	saveObject(Enumeration);
    	reloadEnumeration();
    }

    public void removeEnumerationById(Integer id){
    	removeObjectById(id);
    	reloadEnumeration();
    }

    public Enumeration getEnumerationById(Integer id){
   		return (Enumeration) getObjectById(id);
    }

    public List<Enumeration> getEnumerationList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }
    
    protected void loadEnumeration(){
    	enumerations = this.getObjects();
    }
    
	public List<Enumeration> getEnumerations() {
		if(enumerations == null)
			loadEnumeration();
		
		return enumerations;
	}

	/**
	 * 赵磊  2014/6/25
	 */
	public LinkedHashMap<String, LinkedHashMap<Integer, String>> getEnumerationMaps(){
		if(enumeraMap==null)
			loadEnumerationMap();
		return enumeraMap;
	}
	/**
	 * 赵磊  2014/6/25
	 */
	public LinkedHashMap<Integer, EnumerationValue> getEnumerationValueMaps(){
		if(enumeraValueMap==null)
			loadEnumerationMap();
		return enumeraValueMap;
	}
	/**
	 * 赵磊  2014/6/25
	 */
	protected void loadEnumerationMap(){
		List<Enumeration> mList = this.getObjects();
		enumeraMap = new LinkedHashMap<String, LinkedHashMap<Integer, String>>();
		enumeraValueMap = new LinkedHashMap<Integer, EnumerationValue>();
		for (Enumeration enumeration : mList) {
			List<EnumerationValue> emvList = enumeration.getEnumerationValues();
			LinkedHashMap<Integer, String> eVMap = new LinkedHashMap<Integer, String>();
			if(emvList != null && emvList.size()>0){
				for (EnumerationValue enumerationValue : emvList) {
					eVMap.put(enumerationValue.getId(), enumerationValue.getDisplayRef());
					enumeraValueMap.put(enumerationValue.getId(), enumerationValue);
				}
			}
			
			enumeraMap.put(enumeration.getEnName(), eVMap);
		}
	}
	
	public void reloadEnumeration(){
		//loadEnumeration();
		loadEnumerationMap();
	}

	@Override
	public Enumeration getEnumerationByName(String enName) {
		return  ((EnumerationDao)dao).getEnumerationByName(enName);
	}
}
