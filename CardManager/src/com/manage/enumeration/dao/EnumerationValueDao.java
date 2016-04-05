package com.manage.enumeration.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.enumeration.model.EnumerationValue;

public interface EnumerationValueDao extends Dao{

	EnumerationValue getEnumerationValueByName(String valueName);

	List<EnumerationValue> getEvById(int i);

	EnumerationValue getEnumerationValueByNameAndId(String valueName,
			int parseInt);

}
