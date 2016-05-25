package com.manage.flowchart.dao.impl;

import java.util.List;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.flowchart.dao.FlowchartDao;

public class FlowchartDaoImpl extends DaoImpl implements FlowchartDao{

	@Override
	public List findLinesByFid(String type, Integer id) {
		String hql ="";
		if(type =="node"){
			
			hql = "from com.manage.flowchart.model.FlowNodes info where info.fId ="+id;
		}else if(type =="line"){
			hql = "from com.manage.flowchart.model.FlowLines info where info.fId ="+id;
		}
		
		List list = getHibernateTemplate().find(hql);
		return list;
	}

}
