package com.manage.enumeration.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.manage.enumeration.model.EnumerationValue;
import com.base.framework.service.Manager;

public interface EnumerationValueManager extends Manager{
    
    public void saveEnumerationValue(EnumerationValue enumerationValue);

    public void removeEnumerationValueById(Integer id);

    public EnumerationValue getEnumerationValueById(Integer id);

    public List<EnumerationValue> getEnumerationValueList(PageInfo pageInfo);

	public EnumerationValue getEnumerationValueByName(String valueName);

	public List<EnumerationValue> getEvById(int i);
    
	//验证
	public EnumerationValue getEnumerationValueByNameAndId(String valueName,
			int parseInt);
}
