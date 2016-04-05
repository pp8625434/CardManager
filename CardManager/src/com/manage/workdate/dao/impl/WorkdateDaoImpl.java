package com.manage.workdate.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.base.util.Utils;
import com.manage.workdate.dao.WorkdateDao;
import com.manage.workdate.model.Workdate;

public class WorkdateDaoImpl extends DaoImpl implements WorkdateDao{

	@Override
	public Workdate checkThedate(String ids,String thedates) {
		String hql = "from com.manage.workdate.model.Workdate b where b.thedate='"+thedates+"'";
		if (Utils.isNotNullOrEmpty(ids)) {
			hql += " and id != "+ids;
		}
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Workdate)list.get(0);
		}
		return null;
	}

}
