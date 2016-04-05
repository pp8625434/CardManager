package com.manage.org.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;


import com.base.framework.paging.PageInfo;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.org.dao.OrgDao;
import com.manage.org.model.Org;
import com.manage.org.service.OrgManager;

public class OrgManagerImpl extends ManagerImpl implements OrgManager{

	public List<Org> getOrgList(PageInfo pageInfo) {
		return super.getList(pageInfo);
	}
	
	public Org getOrgById(Integer id) {
		return (Org)getObjectById(id);
	}

	public void removeOrgById(Integer id) {
		removeObjectById(id);
	}

	public void saveOrg(Org org) {
		saveObject(org);
		Integer orgId = org.getId();
		String orgName = org.getName();
		((OrgDao)dao).updateOrgByOrgName(orgId, orgName);
		((OrgDao)dao).updateOrgByParent(orgId, orgName);
	}

	public Org getOrgByName(String name) {
		return ((OrgDao)dao).getOrgByName(name);
	}
	
	public List<Object[]> getOrgList() {
		return ((OrgDao)dao).getOrgList();
	}
	
	public List<Integer> getOrgListByParentOrg(String orgid) {
		return ((OrgDao)dao).getOrgListByParentOrg(orgid);
	}
	
	public Map<Integer, List<Org>> getAllOrg() {
		Map<Integer, List<Org>> orgMap = new TreeMap<Integer, List<Org>>();
		
		List<Org> oList = ((OrgDao)dao).getAllOrgList();
		
		if(oList!=null&&oList.size()>0){
			for(int i=0; i<oList.size(); i++){
				Org orgTab = oList.get(i);
				Integer key = 0;
				if(orgTab.getParent() != null) {
					key = orgTab.getParent();
				}
				List<Org> orgList = orgMap.get(key);
				if(orgList==null){
					orgList = new ArrayList<Org>();
					orgList.add(orgTab);
					orgMap.put(key, orgList);
				}else{
					orgList.add(orgTab);
					orgMap.put(key, orgList);
				}
			}
		}
		return orgMap;
	}

	public Org getOrgByName(String name, Integer parent) {
		return ((OrgDao)dao).getOrgByName(name,parent);
	}

	public List getObjectBySql(String sql) {
		return ((OrgDao)dao).getObjectBySql(sql);
	}
	
	public void updateOrg(Org org){
		((OrgDao)dao).upDateOrg(org);
	}
 
	
	public List<Org> getOrgListByPid(Integer pid){
		return ((OrgDao)dao).getOrgListByPid(pid);
	}; 
 

	public List<Org> getOrgFListByParentId(Integer parentid) {
		// TODO Auto-generated method stub
		List<Org> orgfList = new ArrayList<Org>();
		Org orgf = (Org)getObjectById(parentid);
		if(orgf!=null){
			while (orgf.getParent()!=0) {
				orgfList.add(orgf);
				orgf = (Org)getObjectById(orgf.getParent());
			}
			orgfList.add(orgf);
		}
		
		return orgfList;
	}

	public int isNameRepeat(Org org) {
		Object obj = ((OrgDao)dao).isNameRepeat(org).get(0);
		return Integer.parseInt(obj.toString());
	}
 
}
