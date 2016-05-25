package com.manage.enumeration.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.enumeration.dao.EnumerationValueDao;
import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.model.EnumerationValue;
public class EnumerationValueDaoImpl extends DaoImpl implements EnumerationValueDao{

	public EnumerationValue getEnumerationValueByName(String valueName) {
		String hql = "from com.manage.enumeration.model.EnumerationValue info where info.valueName='"+valueName+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (EnumerationValue)list.get(0);
		}
		return null;
	}

	public List<EnumerationValue> getEvById(int i) {
		String hql = "from com.manage.enumeration.model.EnumerationValue info where info.enumeration.id="+ i +" order by pxorder " ;
		return this.getHibernateTemplate().find(hql);
	}

	@Override
	public EnumerationValue getEnumerationValueByNameAndId(String valueName,int parseInt) {
		String hql = "from com.manage.enumeration.model.EnumerationValue info where info.valueName='"+valueName+"' and info.enumeration.id="+parseInt;
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (EnumerationValue)list.get(0);
		}
		return null;
	}
}
