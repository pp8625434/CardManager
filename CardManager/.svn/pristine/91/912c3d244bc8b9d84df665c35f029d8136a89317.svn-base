package com.manage.enumeration.service.impl;

import java.util.List;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.enumeration.dao.EnumerationValueDao;
import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.model.EnumerationValue;
import com.manage.enumeration.service.EnumerationManager;
import com.manage.enumeration.service.EnumerationValueManager;

public class EnumerationValueManagerImpl extends ManagerImpl implements EnumerationValueManager{
    
    protected void preSaveObject(Object obj) {
        super.preSaveObject(obj);

    }

    protected void postSaveObject(Object obj) {
    	EnumerationManager enumMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
    	enumMgr.reloadEnumeration();
        super.postSaveObject(obj);

    }

    protected void preRemoveObject(Object obj) {    	 
        super.preRemoveObject(obj);
    }

    protected void postRemoveObject(Object obj) {
    	EnumerationManager enumMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
    	enumMgr.reloadEnumeration();
        super.postRemoveObject(obj);
    }
    
    public void saveEnumerationValue(EnumerationValue enumerationValue){
    	EnumerationManager enumMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
    	enumMgr.saveEnumeration(enumerationValue.getEnumeration());
    }

    public void removeEnumerationValueById(Integer id){
    	EnumerationValue enumerationValue = this.getEnumerationValueById(id);
    	Enumeration enumeration = enumerationValue.getEnumeration();
    	enumeration.getEnumerationValues().remove(enumerationValue);
    	enumerationValue.setEnumeration(null);
    	this.removeObject(enumerationValue);
    	
    }

    public EnumerationValue getEnumerationValueById(Integer id){
   		return (EnumerationValue) getObjectById(id);
    }

    public List<EnumerationValue> getEnumerationValueList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

	public EnumerationValue getEnumerationValueByName(String valueName) {
		
		return  ((EnumerationValueDao)dao).getEnumerationValueByName(valueName);
	}

	public List<EnumerationValue> getEvById(int i) {
		return ((EnumerationValueDao)dao).getEvById(i);
	}

	@Override
	public EnumerationValue getEnumerationValueByNameAndId(String valueName,
			int parseInt) {
		
		return ((EnumerationValueDao)dao).getEnumerationValueByNameAndId(valueName,parseInt);
	}
}
