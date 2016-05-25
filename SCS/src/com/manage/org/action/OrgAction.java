package com.manage.org.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.base.util.LogUtil;
import com.base.util.StringUtils;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.paging.PageInfo;
import com.base.framework.security.model.Role;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.cache.OrgTreeData;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.org.action.info.OrgPageInfo;
import com.manage.org.model.Org;
import com.manage.org.model.OrgJson;
import com.manage.org.service.OrgManager;
import com.manage.user.model.User;
import com.sdicons.json.mapper.JSONMapper;
import com.sdicons.json.mapper.MapperException;

public class OrgAction extends BaseAction{

	private Org org;
	private OrgPageInfo pageInfo;
	private List<Org> orgList;
	private String orderIndexs;
	
	private String name;
	private Integer parent;
	private String result;
	
	private String data;
	private String params;
	
	private String isdeleted;
	
	private List<Org> orgFList;
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	public String orgList() throws Exception {
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		pageInfo = pageInfo == null ? new OrgPageInfo() : pageInfo;
		if(pageInfo.getF_parent()==null){
			pageInfo.setF_parent(0);
		}
		pageInfo.setF_deleted("0");
		
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		orgList = orgMgr.getOrgList(sarchPageInfo);
		if(pageInfo.getF_parent() != null && pageInfo.getF_parent()!=0){
			orgFList = orgMgr.getOrgFListByParentId(pageInfo.getF_parent());
			this.getRequest().setAttribute("orgFList", orgFList);
		}
		return SUCCESS;
	}

	public String saveOrg() throws Exception {
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		isdeleted = this.getRequest().getParameter("isdeleted");
		User creator = (User)getSession().getAttribute("user");
		org.setCreator(creator.getId());
		org.setCreatorName(creator.getRealname());
		if(org.getCreateDate()==null){
			org.setCreateDate(new Date());
		}
		if(org.getParent() == null){
			org.setParent(0);
		}
		String parentName = orgMgr.getOrgById(org.getParent()).getName();
		org.setParentName(parentName);
		//
		if(isNameRepeat(org)){
			//// 判断日志操作类型（增、删）
			int typeNum = LogUtil.LOG_ADD_TYPE;
			if(org.getId() != null){
				typeNum = LogUtil.LOG_UPDATE_TYPE;
			}
			org.setName(StringUtils.delSpace(org.getName()));
			orgMgr.saveOrg(org);
			
			///// 记录操作日志
			User us = (User) getSession().getAttribute("user");
			logMgr.saveLog(typeNum, LogUtil.LOG_ORGMANAGE_FUNCTION, org.getId(), org.getName(), us.getId(), us.getRealname(),getRequest());
			
			//刷新缓存
			refreshOrg();
		}else{
			
		}
		this.getRequest().setAttribute("title","机构管理");
		this.getRequest().setAttribute("url","/org/orgList.action");
		this.getRequest().setAttribute("params",this.params+"&isdeleted="+isdeleted);
		return SUCCESS;
	}
	
	public String removeOrg() throws Exception {
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		isdeleted = this.getRequest().getParameter("isdeleted");
		Org orgd  = orgMgr.getOrgById(org.getId());
		orgd.setDeleted(1);
		orgMgr.updateOrg(orgd);
		
		//记录操作日志
		User us = (User) getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ORGMANAGE_FUNCTION, orgd.getId(), orgd.getName(), us.getId(), us.getRealname(),getRequest());
		
		//刷新缓存
		refreshOrg();
		
		pageInfo = pageInfo == null ? new OrgPageInfo() : pageInfo;
		pageInfo.setF_parent(orgd.getParent());
		return SUCCESS;
	}

	public boolean isNameRepeat(Org org){
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		int count = orgMgr.isNameRepeat(org);
		return count>0?false:true;
	} 
	
	public String viewOrg() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		String isdeleted = this.getRequest().getParameter("isdeleted");
		this.getRequest().setAttribute("params", params);
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		org = orgMgr.getOrgById(org.getId());
		this.getRequest().setAttribute("isdeleted",isdeleted);
		return SUCCESS;
	}
	
	public String removeAllOrg() throws Exception {
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		isdeleted = this.getRequest().getParameter("isdeleted");
		List<String> tempList = new ArrayList<String>();
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			User us = (User) getSession().getAttribute("user");
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					if("0".equals(checkExecute(ids[i]))){
						Integer orgid = new Integer( ids[i] );
						Org orgd  = orgMgr.getOrgById(orgid);
						orgd.setDeleted(1);
						orgMgr.updateOrg(orgd);
						
						///// 记录操作日志
						logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ORGMANAGE_FUNCTION, orgd.getId(), orgd.getName(), us.getId(), us.getRealname(),getRequest());
					}else{ 
						tempList.add(orgMgr.getOrgById(Integer.parseInt(ids[i])).getName());
					}	
				}
			}
		}
		refreshOrg();
		if(tempList.size() ==0){
			data="{'result':'success'}";
		}else{
			StringBuffer sBuffer = new StringBuffer();
			for(int i=0;i<tempList.size();i++){
				if(0 == i){
					sBuffer = sBuffer.append(tempList.get(0));
				}else{
					sBuffer = sBuffer.append(","+tempList.get(i));
				}
			}
			data="{'result':'fail','info':'"+sBuffer.toString()+"'}";
		}
		return SUCCESS;
	}
	
	public String selOrg() throws Exception {
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		pageInfo = pageInfo == null ? new OrgPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		orgList = orgMgr.getOrgList(sarchPageInfo);
		return SUCCESS;
	}
	
	public String checkOrg() {
		OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
		org = orgMgr.getOrgByName(name,parent);
		if(org != null){
			result = "succ";
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public String checkDataBeforeDelete() {
		String orgId = getRequest().getParameter("orgId");
		data = "0";
		data = checkExecute(orgId); 
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	private String checkExecute(String orgId){
		String data = "0";
		if(orgId != null && !"".equals(orgId)) {
			OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
			List list = orgMgr.getObjectBySql("select count(*) from com.manage.org.model.Org info where info.parent in ("+orgId+") and info.deleted =0");
			if(list != null && list.size() > 0) {
				Long t = (Long)list.get(0);
				if(t>0){
					data = "1";
				}else{
					list = orgMgr.getObjectBySql("select count(*) from com.manage.user.model.User info where info.orgId in ("+orgId+")");
					if(list != null && list.size() > 0) {
						t = (Long)list.get(0);
						if(t>0){
							data = "1";
						}
					}
				}
			}
		}
		return data;
	}
	
	@SuppressWarnings("unchecked")
	public String getOrgTree() throws MapperException, IOException{
		List<OrgJson> resultList = new ArrayList<OrgJson>();
		List<Role> roleList = (List<Role>) this.getSession().getAttribute("roleList");
		boolean isGlob = false;
		for(Role role :roleList){
			if(1 == role.getIsglob()){
				isGlob = true;
				break;
			}
		}
		if(isGlob){//ȫ�ֽ�ɫ
			//����2
			Map<Integer, Org> orgMap = OrgTreeData.getOrgMap();
			Iterator<Org> cIterator1 = orgMap.values().iterator();
			while(cIterator1.hasNext()){
				Org temp = cIterator1.next();
				if(temp != null){
					OrgJson orgjson = new OrgJson();
					orgjson.setId(temp.getId());
					orgjson.setpId(temp.getParent());
					orgjson.setName(temp.getName());
					resultList.add(orgjson);
				}
			}
		}else {
			User user = (User) this.getSession().getAttribute("user");
			OrgJson orgjsonTop = new OrgJson();
			orgjsonTop.setId(user.getOrgId());
			orgjsonTop.setName(user.getOrgName());
			orgjsonTop.setpId(0);
			resultList.add(orgjsonTop);
			List<Org> listOrg = new ArrayList<Org>();
			listOrg = this.getAllChildeOrg(listOrg, user.getOrgId());
			for(Org org : listOrg){
				OrgJson orgjson = new OrgJson();
				orgjson.setId(org.getId());
				orgjson.setpId(org.getParent());
				orgjson.setName(org.getName());
				resultList.add(orgjson);
			}
			
		}
		data = JSONMapper.toJSON(resultList).render(false);
		ServletActionContext.getResponse().setContentType("application/json; charset=utf-8");
		ServletActionContext.getResponse().setHeader("cache-control", "no-cache");
		ServletActionContext.getResponse().getWriter().print(data);
		return null;
	}
	
	public List<Org> getAllChildeOrg(List<Org> orgList,Integer pid){
		List<Org> childOrg = OrgTreeData.getTreeOrgMap().get(pid);
		if(null!= childOrg && childOrg.size()>0){
			for(int i =0;i<childOrg.size();i++){
				getAllChildeOrg(orgList,childOrg.get(i).getId());
			}
			orgList.addAll(childOrg);
		}
		return orgList;
	}
	
	/**
	 * 获得商圈tree
	 * @return
	 * @throws Exception
	 */
	public String getSQTree() throws Exception{
		List<OrgJson> resultList = new ArrayList<OrgJson>();
		Map<Integer, Org> orgMap = OrgTreeData.getOrgMap();
		Iterator<Org> cIterator1 = orgMap.values().iterator();
		while(cIterator1.hasNext()){
			Org temp = cIterator1.next();
			if(temp != null && temp.getOrgType().equals("1")){
				OrgJson orgjson = new OrgJson();
				orgjson.setId(temp.getId());
				orgjson.setpId(temp.getParent());
				orgjson.setName(temp.getName());
				resultList.add(orgjson);
			}
		}
		data = JSONMapper.toJSON(resultList).render(false);
		//System.out.println(data);
		/*
		ServletActionContext.getResponse().setContentType("application/json; charset=utf-8");
		ServletActionContext.getResponse().setHeader("cache-control", "no-cache");
		ServletActionContext.getResponse().getWriter().print(data);*/
		return SUCCESS;
	}
	
	private void refreshOrg(){
		OrgTreeData.setTreeOrgMap();
	}

	
	public Org getOrg() {
		return org;
	}

	public void setOrg(Org org) {
		this.org = org;
	}

	public OrgPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(OrgPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<Org> getOrgList() {
		return orgList;
	}

	public void setOrgList(List<Org> orgList) {
		this.orgList = orgList;
	}

	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getParent() {
		return parent;
	}

	public void setParent(Integer parent) {
		this.parent = parent;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}
	
	public List<Org> getOrgFList() {
		return orgFList;
	}

	public void setOrgFList(List<Org> orgFList) {
		this.orgFList = orgFList;
	}

	public String getIsdeleted() {
		return isdeleted;
	}

	public void setIsdeleted(String isdeleted) {
		this.isdeleted = isdeleted;
	}
	
}
