package com.manage.flowchart.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.LogUtil;
import com.base.util.Utils;
import com.manage.flowchart.action.info.FlowchartPageInfo;
import com.manage.flowchart.model.FlowLines;
import com.manage.flowchart.model.FlowNodes;
import com.manage.flowchart.model.Flowchart;
import com.manage.flowchart.model.FlowchartPO;
import com.manage.flowchart.service.FlowchartManager;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.user.model.User;

@SuppressWarnings("serial")
public class FlowchartAction extends BaseAction{
	
	
	private Flowchart  flowchart;
	
	private List<Flowchart> flowchartList;
	
	private FlowchartPageInfo pageInfo;
	
	private String params;
	
	private Integer flowchartId;//流程ID
	
	private FlowchartManager fMgr =  (FlowchartManager) SpringContextHolder.getBean(Flowchart.class);

	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	private String data;
	
	private String nodes;
	
	private String lines;
	
	private String ids;
	
	private FlowchartManager  fnMgr = (FlowchartManager) SpringContextHolder.getBean(FlowNodes.class);
	private FlowchartManager  flMgr = (FlowchartManager) SpringContextHolder.getBean(FlowLines.class);
	
	/**
	 * 获得流程图list
	 * @return
	 * @throws Exception
	 */
	public String findFlowchartList() throws Exception{
		pageInfo = pageInfo == null? new FlowchartPageInfo():pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		flowchartList = fMgr.findFlowchartList(sarchPageInfo);
		return SUCCESS;
	}
	
	/**
	 * 创建流程图
	 * @return
	 * @throws Exception
	 */
	public String perCreateFlowchart() throws Exception{
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		flowchart = fMgr.findFlowchartById(flowchart.getId());
		return SUCCESS;
	}
	
	/**
	 * 保存
	 * @return
	 * @throws Exception
	 */
	public String saveFlowchart() throws Exception{
		int typeNum = LogUtil.LOG_ADD_TYPE;
		if(flowchart.getId() != null){
			typeNum = LogUtil.LOG_UPDATE_TYPE;
		}else{			
			flowchart.setVersion(0);
			flowchart.setCreateDate(new Date());
		}
		User u = (User) getSession().getAttribute("user");
		
		fMgr.saveFlowchart(flowchart);
		logMgr.saveLog(typeNum, LogUtil.LOG_FLOWCHART, flowchart.getId(), flowchart.getFcname(), u.getId(), u.getRealname(),getRequest());
		this.getRequest().setAttribute("title","流程图");
		this.getRequest().setAttribute("url","/flowchart/findFlowchartList.action");
		this.getRequest().setAttribute("params",this.params);
		return SUCCESS;
	}
	
	/**
	 * 画流程图
	 * @return
	 * @throws Exception
	 */
	public String perDrawFlowchart() throws Exception{
		flowchart = fMgr.findFlowchartById(flowchart.getId());
		if(flowchart!=null){
			flowchart = fMgr.findFlowchartById(flowchart.getId());
			if(flowchart!=null){
				List<FlowLines> lines = new ArrayList<FlowLines>();
				List<FlowNodes> nodes = new ArrayList<FlowNodes>();
				lines  = fMgr.findLinesByFid("line",flowchart.getId());
				nodes  = fMgr.findLinesByFid("node",flowchart.getId());
				if(lines!=null && nodes!=null && lines.size()>0 && nodes.size()>0){
					
					//fastjson 直接转化的json格式 gooflow无法解析。需要重新拼接
					StringBuffer sb  = new StringBuffer();
					sb.append("{");
					sb.append("\"title\":\""+flowchart.getFcname()+"\",");
					sb.append("\"areas\":{},");
					sb.append("\"initNum\":"+(lines.size()+nodes.size())+",");
					//开始拼接nodes
					sb.append("\"nodes\":{");
					for (int i = 0; i < nodes.size(); i++) {
						sb.append("\""+nodes.get(i).getnId()+"\":{");
						sb.append("\"name\":\""+nodes.get(i).getName()+"\",");
						sb.append("\"left\":"+nodes.get(i).getLeft()+",");
						sb.append("\"top\":"+nodes.get(i).getTop()+",");
						sb.append("\"type\":\""+nodes.get(i).getType()+"\",");
						sb.append("\"width\":"+nodes.get(i).getWidth()+",");
						sb.append("\"height\":"+nodes.get(i).getHeight()+",");
						sb.append("\"alt\":"+nodes.get(i).getAlt()+",");
						sb.append("\"marked\":"+nodes.get(i).getMarked());
						if(i == nodes.size()-1){//最后一个不用逗号
							sb.append("}");
						}else{						
							sb.append("},");
						}
					}
					sb.append("},");
					//开始拼接线
					sb.append("\"lines\":{");
					for (int i = 0; i < lines.size(); i++) {
						sb.append("\""+lines.get(i).getnId()+"\":{");
						sb.append("\"name\":\""+lines.get(i).getName()+"\",");
						sb.append("\"from\":\""+lines.get(i).getFrom()+"\",");
						sb.append("\"to\":\""+lines.get(i).getTo()+"\",");
						sb.append("\"type\":\""+lines.get(i).getType()+"\",");					
						sb.append("\"M\":"+lines.get(i).getM()+",");
						sb.append("\"alt\":true,");
						sb.append("\"marked\":"+lines.get(i).getMarked());
						if(i == lines.size()-1){//最后一个不用逗号
							sb.append("}");
						}else{						
							sb.append("},");
						}
					}
					sb.append("}");
					sb.append("}");
					data = sb.toString();
					
				}
			}
		}
		getRequest().setAttribute("data", data);
		return SUCCESS;
	}
	
	/**
	 * 保存流程图的结点和线
	 * @return
	 * @throws Exception
	 */
	public String saveFlowNodesAndLines() throws Exception{
		data = "error";
		if(Utils.isNotNullOrEmpty(lines) && Utils.isNotNullOrEmpty(nodes) && Utils.isNotNullOrEmpty(flowchartId)){
			//修改保存线应该删除之前的
			
			List<FlowLines> fLines = new ArrayList<FlowLines>();
			List<FlowNodes> fNodes = new ArrayList<FlowNodes>();
			fLines = JSONArray.parseArray(lines, FlowLines.class);
			fNodes = JSONArray.parseArray(nodes, FlowNodes.class);
			FlowNodes fn ;
			for (FlowNodes flowNodes : fNodes) {
				fn = new FlowNodes();
				fn.setfId(flowchartId);
				fn.setName(flowNodes.getName());
				fn.setnId(flowNodes.getnId());
				fn.setType(flowNodes.getType());
				fn.setTop(flowNodes.getTop()!=null?flowNodes.getTop():100);
				fn.setLeft(flowNodes.getLeft()!=null?flowNodes.getLeft():100);
				fn.setMarked("false");
				fn.setHeight(flowNodes.getHeight()!=null?flowNodes.getHeight():24);
				fn.setWidth(flowNodes.getWidth()!=null?flowNodes.getWidth():24);
				fn.setAlt(flowNodes.getAlt()!=null?flowNodes.getAlt():"false");
				fnMgr.saveFlowNodes(fn);
				if(fn.getId()!=null){
					data = "success";
				}else{
					break;
				}
			}
			FlowLines fl;
			for (FlowLines flowLines : fLines) {
				fl = new FlowLines();
				fl.setfId(flowchartId);
				fl.setnId(flowLines.getnId());
				fl.setFrom(flowLines.getFrom());
				fl.setTo(flowLines.getTo());
				fl.setName(flowLines.getName());
				fl.setType(flowLines.getType());
				fl.setMarked("false");
				fl.setM(flowLines.getM()!=null?flowLines.getM():0);
				flMgr.saveFlowLindes(fl);
				if(fl.getId()!=null){
					data = "success";
				}else{
					break;
				}
			} 
		}
		//User u = (User) getRequest().getSession().getAttribute("user");
		//logMgr.saveLog(LogUtil.LOG_ADD_TYPE, LogUtil.LOG_FLOWCHART, flowchart.getId(), flowchart.getFcname(), u.getId(), u.getRealname(),getRequest());
		return SUCCESS;
	}
	
	/**
	 * 配置流程图
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public String configFlowchart() throws Exception{
		flowchart = fMgr.findFlowchartById(flowchart.getId());
		if(flowchart!=null){
			List<FlowLines> lines = new ArrayList<FlowLines>();
			List<FlowNodes> nodes = new ArrayList<FlowNodes>();
			lines  = fMgr.findLinesByFid("line",flowchart.getId());
			nodes  = fMgr.findLinesByFid("node",flowchart.getId());
			if(lines!=null && nodes!=null && lines.size()>0 && nodes.size()>0){
				/*FlowchartPO fpo = new FlowchartPO();
				fpo.setTitle(flowchart.getFcname());
				fpo.setInitNum(lines.size()+nodes.size());
				fpo.setLines(lines);
				fpo.setNodes(nodes);
				fpo.setAreas("{}");
				data = JSON.toJSONString(fpo);
				System.out.println(data);*/
				//fastjson 直接转化的json格式 gooflow无法解析。需要重新拼接
				StringBuffer sb  = new StringBuffer();
				sb.append("{");
				sb.append("\"title\":\""+flowchart.getFcname()+"\",");
				sb.append("\"areas\":{},");
				sb.append("\"initNum\":"+(lines.size()+nodes.size())+",");
				//开始拼接nodes
				sb.append("\"nodes\":{");
				for (int i = 0; i < nodes.size(); i++) {
					sb.append("\""+nodes.get(i).getnId()+"\":{");
					sb.append("\"name\":\""+nodes.get(i).getName()+"\",");
					sb.append("\"left\":"+nodes.get(i).getLeft()+",");
					sb.append("\"top\":"+nodes.get(i).getTop()+",");
					sb.append("\"type\":\""+nodes.get(i).getType()+"\",");
					sb.append("\"width\":"+nodes.get(i).getWidth()+",");
					sb.append("\"height\":"+nodes.get(i).getHeight()+",");
					sb.append("\"alt\":"+nodes.get(i).getAlt()+",");
					sb.append("\"marked\":"+nodes.get(i).getMarked()+",");
					if(i == nodes.size()-1){//最后一个不用逗号
						sb.append("}");
					}else{						
						sb.append("},");
					}
				}
				sb.append("},");
				//开始拼接线
				sb.append("\"lines\":{");
				for (int i = 0; i < lines.size(); i++) {
					sb.append("\""+lines.get(i).getnId()+"\":{");
					sb.append("\"name\":\""+lines.get(i).getName()+"\",");
					sb.append("\"from\":\""+lines.get(i).getFrom()+"\",");
					sb.append("\"to\":\""+lines.get(i).getTo()+"\",");
					sb.append("\"type\":\""+lines.get(i).getType()+"\",");					
					sb.append("\"M\":"+lines.get(i).getM()+",");
					sb.append("\"alt\":true,");
					sb.append("\"marked\":"+lines.get(i).getMarked()+",");
					if(i == lines.size()-1){//最后一个不用逗号
						sb.append("}");
					}else{						
						sb.append("},");
					}
				}
				sb.append("}");
				sb.append("}");
				data = sb.toString();
			}
		
		}
		getRequest().setAttribute("data", data);
		return SUCCESS;
	}
	
	/**
	 * 删除流程图
	 * @return
	 * @throws Exception
	 */
	public String deleteFlowchart() throws Exception{
		//删除主表前，需先删除其他关联表中的数据
		if(Utils.isNotNullOrEmpty(ids)){
			User u = (User) getRequest().getSession().getAttribute("user");
			String [] tempids = ids.split(",");
			String sql ="";
			if(Utils.isNotNullOrEmpty(tempids)){
				for (int i = 0; i < tempids.length; i++) {
					flowchart = fMgr.findFlowchartById(Integer.parseInt(tempids[i]));
					//先删除其他关联数据表
					if(flowchart !=null){
						sql = "delete from p_flownodesconfig where  fid = "+flowchart.getId();
						fMgr.executeSQLForUpdate(sql);//删除节点配置表
						
						sql = "delete from p_flownodes where fid = "+flowchart.getId();
						fMgr.executeSQLForUpdate(sql);
						
						sql = "delete from p_flowlines where fid = "+flowchart.getId();
						fMgr.executeSQLForUpdate(sql);
						
						fMgr.removeObjectById(flowchart.getId());
						logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_FLOWCHART, flowchart.getId(), flowchart.getFcname(), u.getId(), u.getRealname(),getRequest());
					}
				}
			}
			
		}
		params=PageParamsUtil.getPageParam(pageInfo);
		getRequest().setAttribute("params", params);
		this.getRequest().setAttribute("title", "流程图");
		this.getRequest().setAttribute("delStr", "true");
		this.getRequest().setAttribute("url", "/flowchart/findFlowchartList.action");
		return SUCCESS;
	}
	
	
	public Flowchart getFlowchart() {
		return flowchart;
	}
	public void setFlowchart(Flowchart flowchart) {
		this.flowchart = flowchart;
	}
	public List<Flowchart> getFlowchartList() {
		return flowchartList;
	}
	public void setFlowchartList(List<Flowchart> flowchartList) {
		this.flowchartList = flowchartList;
	}
	public FlowchartPageInfo getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(FlowchartPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}



	public Integer getFlowchartId() {
		return flowchartId;
	}

	public void setFlowchartId(Integer flowchartId) {
		this.flowchartId = flowchartId;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
	public String getNodes() {
		return nodes;
	}

	public void setNodes(String nodes) {
		this.nodes = nodes;
	}

	public String getLines() {
		return lines;
	}

	public void setLines(String lines) {
		this.lines = lines;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}
	
}
