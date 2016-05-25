package com.manage.flowchart.service;

import com.base.framework.service.Manager;
import com.manage.flowchart.model.FlowNodesConfig;

public interface FlowchartNodesConfigManager extends Manager{
	
	
	public void saveFlowchartNodesConfig(FlowNodesConfig fnConfig);
	
}
