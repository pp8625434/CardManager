package com.manage.doubledate.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.base.util.Utils;
import com.manage.doubledate.dao.DoubledateDao;
import com.manage.doubledate.model.Doubledate;


public class DoubledateDaoImpl extends DaoImpl implements DoubledateDao{

	@Override
	public Doubledate getDoubledateByAdate(String ids,String orgid, String adate) throws Exception {
		String hql = "from com.manage.doubledate.model.Doubledate mer where mer.adate='"+adate+"' and mer.isdeleted=0 and orgid='"+orgid+"'";
		if (Utils.isNotNullOrEmpty(ids)) {
			hql += "and id != "+ids;
		}
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Doubledate)list.get(0);
		}
		return null;
		
	}

}
