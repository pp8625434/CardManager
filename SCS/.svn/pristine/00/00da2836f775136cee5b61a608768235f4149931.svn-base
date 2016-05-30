package com.manage.changemedium.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.changemedium.dao.ChangemediumInfoDao;
import com.manage.changemedium.model.SChangemediumInfoTab;

public class ChangemediumInfoDaoImpl extends DaoImpl implements ChangemediumInfoDao{

	@Override
	public List<SChangemediumInfoTab> getCminfoList(Integer id) {
		String hql = "from com.manage.changemedium.model.SChangemediumInfoTab info where info.cid="+id;
		List<SChangemediumInfoTab> list = getHibernateTemplate().find(hql);
		return (list ==null || list.size()<1)?null:list;
	}

}
