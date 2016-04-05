package com.manage.organization.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.base.framework.BaseConfigHolder;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.cache.OrganizationUtils;
import com.manage.organization.model.Organization;
import com.manage.organization.model.TreeJson;
import com.sdicons.json.mapper.JSONMapper;

public class OrganizationAction extends BaseAction {
	
	private String otagid;
	
	private String data;

	public String getOrganizationTree() throws Exception{
		List<Organization> list = OrganizationUtils.getOrganizationList(BaseConfigHolder.getOrganizationatPath());
		if(list != null && list.size()>0){
			List<TreeJson> resultList = new ArrayList<TreeJson>();
			TreeJson orgjson;
			for(Organization o:list){
				orgjson = new TreeJson();
				orgjson.setId(o.getOtagid());
				orgjson.setpId(getParent(o.getOtagid()));
				orgjson.setName(o.getOname());
				resultList.add(orgjson);
			}
			
			data = JSONMapper.toJSON(resultList).render(false);
			ServletActionContext.getResponse().setContentType("application/json; charset=utf-8");
			ServletActionContext.getResponse().setHeader("cache-control", "no-cache");
			ServletActionContext.getResponse().getWriter().print(data);
		}
		
		return null;
	}
	
	public String getOrganizationById() throws Exception{
		if(Utils.isNotNullOrEmpty(otagid)){
			List<Organization> list = OrganizationUtils.getOrganizationList(BaseConfigHolder.getOrganizationatPath()+"&otagid="+otagid);
			if(list != null && list.size()>0){
				data = list.get(0).getOname();
			}
		}
		
		return SUCCESS;
	}
	
	public String getOtagid() {
		return otagid;
	}

	public void setOtagid(String otagid) {
		this.otagid = otagid;
	}
	
	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
	protected static String getParent(String p) throws Exception{
		if(Utils.isNotNullOrEmpty(p)){
			String s = p.toString();
			if(s.length()==2){
				return p;
			}else{
				return s.substring(0, s.length()-2);
			}
		}
		return p;
	}
}
