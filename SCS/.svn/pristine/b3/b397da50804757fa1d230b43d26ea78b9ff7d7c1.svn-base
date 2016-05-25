package com.manage.classifiedcopy.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.classifiedcopy.dao.CarriercontentDao;
import com.manage.classifiedcopy.model.SCarriercontentTab;

public class CarriercontentDaoImpl extends DaoImpl implements CarriercontentDao{

	@Override
	public List<SCarriercontentTab> getcontentList(Integer id) {
		String hql = "from com.manage.classifiedcopy.model.SCarriercontentTab info where info.cid="+id;
		List<SCarriercontentTab> list = getHibernateTemplate().find(hql);
		return list;
	}

}
