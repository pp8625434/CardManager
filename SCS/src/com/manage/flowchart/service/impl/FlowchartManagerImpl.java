package com.manage.flowchart.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.flowchart.dao.FlowchartDao;
import com.manage.flowchart.model.FlowLines;
import com.manage.flowchart.model.FlowNodes;
import com.manage.flowchart.model.Flowchart;
import com.manage.flowchart.service.FlowchartManager;

public class FlowchartManagerImpl extends ManagerImpl implements FlowchartManager{

	@Override
	public void saveFlowchart(Flowchart flowchart) {
		saveObject(flowchart);
		
	}

	@Override
	public List<Flowchart> findFlowchartList(PageInfo pageInfo) {
		
		return this.getObjects(pageInfo);
	}

	@Override
	public Flowchart findFlowchartById(Integer id) {
		
		return (Flowchart) this.getObjectById(id);
	}

	@Override
	public void saveFlowNodes(FlowNodes fn) {
		saveObject(fn); 
		
	}

	@Override
	public void saveFlowLindes(FlowLines fl) {
		saveObject(fl);
		
	}

	@Override
	public List findLinesByFid(String type, Integer id) {
		
		return ((FlowchartDao)dao).findLinesByFid(type,id);
	}

}
