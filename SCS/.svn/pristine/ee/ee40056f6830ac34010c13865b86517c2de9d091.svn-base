package com.manage.flowchart.action;

import java.util.List;

import com.base.framework.SpringContextHolder;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.flowchart.model.FlowNodesConfig;
import com.manage.flowchart.model.Flowchart;
import com.manage.flowchart.service.FlowchartManager;
import com.manage.flowchart.service.FlowchartNodesConfigManager;

public class FnConfigAction extends BaseAction{
	
	
	private FlowNodesConfig fnConfig;
	
	private FlowchartManager fMgr = (FlowchartManager) SpringContextHolder.getBean(Flowchart.class);
	
	private FlowchartNodesConfigManager fnMgr = (FlowchartNodesConfigManager) SpringContextHolder.getBean(FlowNodesConfig.class);
	
	private Integer fid;
	
	private String nid;
	
	private String name;
	
	private String data;
	
	/**
	 * 保存节点配置信息
	 * @return
	 * @throws Exception
	 */
	public String saveNodesConfig() throws Exception{
		data = "error";
		if(Utils.isNotNullOrEmpty(nid) && Utils.isNotNullOrEmpty(name) && Utils.isNotNullOrEmpty(fid)){
			//先更新节点信息
			String sql = "update p_flownodes  set name='"+name+"'  where nid='"+nid+"'  and fid="+fid;
			List list = fMgr.executeSQLForUpdate(sql);
			if(list!=null && list.size()>0){//开始保存节点配置信息
				//先查询一次节点配置信息,如果没有则添加,如果有则更新
				sql = "select id from  p_flownodesconfig where nid='"+nid+"'  and fid="+fid;
				List fnList = fMgr.executeSQLForUpdate(sql);
				if(fnList!=null && fnList.size()>0){
					fnConfig.setId((Integer)fnList.get(0));
				}
				fnConfig.setFid(fid);
				fnConfig.setNid(nid);
				fnMgr.saveFlowchartNodesConfig(fnConfig);
				data = "success";
			}
		}
		
		return SUCCESS;
	}
	
	
	public FlowNodesConfig getFnConfig() {
		return fnConfig;
	}

	public void setFnConfig(FlowNodesConfig fnConfig) {
		this.fnConfig = fnConfig;
	}


	public Integer getFid() {
		return fid;
	}


	public void setFid(Integer fid) {
		this.fid = fid;
	}


	public String getNid() {
		return nid;
	}


	public void setNid(String nid) {
		this.nid = nid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}

	
	
}
