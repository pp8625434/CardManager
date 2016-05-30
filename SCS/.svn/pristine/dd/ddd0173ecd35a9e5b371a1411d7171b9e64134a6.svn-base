package com.manage.quartersubsidies.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.quartersubsidies.dao.QuartersubsidiesInfoDao;
import com.manage.quartersubsidies.model.SQuartersubsidiesInfoTab;

public class QuartersubsidiesInfoDaoImpl extends DaoImpl implements QuartersubsidiesInfoDao{

	@Override
	public List<SQuartersubsidiesInfoTab> getInfoList(Integer id) {
		String hqlString = " from com.manage.quartersubsidies.model.SQuartersubsidiesInfoTab info where info.qid="+id;
		List<SQuartersubsidiesInfoTab> list = getHibernateTemplate().find(hqlString);
		return (list == null || list.size()<1)?null:list;
	}

}
