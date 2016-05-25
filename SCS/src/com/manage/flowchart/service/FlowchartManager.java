package com.manage.flowchart.service;

import java.util.List;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;
import com.manage.flowchart.model.FlowLines;
import com.manage.flowchart.model.FlowNodes;
import com.manage.flowchart.model.Flowchart;

public interface FlowchartManager extends Manager{
	
	public void saveFlowchart(Flowchart flowchart);
	
	public List<Flowchart> findFlowchartList(PageInfo pageInfo);

	public Flowchart findFlowchartById(Integer id);

	public void saveFlowNodes(FlowNodes fn);
	
	public void saveFlowLindes(FlowLines fl);
	
	/**
	 * 根据流程ID获得借点或者线的list
	 * @param type
	 * @param id
	 * @return
	 */
	public List findLinesByFid(String type, Integer id);
}
