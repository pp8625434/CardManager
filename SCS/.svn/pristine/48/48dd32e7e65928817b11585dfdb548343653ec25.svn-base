package com.manage.org.dao;

import java.util.List;

import com.base.framework.dao.Dao;
import com.manage.org.model.Org;

public interface OrgDao extends Dao {

	public Org getOrgByName(String name, Integer parent);

	public List<Object[]> getOrgList();

	public List<Integer> getOrgListByParentOrg(String orgid);

	public List<Org> getAllOrgList();

	public Org getOrgByName(String name);

	public List getObjectBySql(String sql);

	public int updateOrgByOrgName(Integer orgId, String orgName);

	public int updateOrgByParent(Integer orgId, String orgName);
	
	public void upDateOrg(Org org);
	
	public List<Org> getOrgListByPid(Integer pid);

	public List isNameRepeat(Org org);

}

