package com.manage.enumeration.service;

import java.util.LinkedHashMap;
import java.util.List;

import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.model.EnumerationValue;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;

public interface EnumerationManager extends Manager{
    
    public void saveEnumeration(Enumeration enumeration);

    public void removeEnumerationById(Integer id);

    public Enumeration getEnumerationById(Integer id);

    public List<Enumeration> getEnumerationList(PageInfo pageInfo);
    
    
    public List<Enumeration> getEnumerations();  
    
    public void reloadEnumeration();

	public Enumeration getEnumerationByName(String enName);
    
	public LinkedHashMap<String, LinkedHashMap<Integer, String>> getEnumerationMaps();
	
	public LinkedHashMap<Integer, EnumerationValue> getEnumerationValueMaps();
}
