package com.manage.org.service;

import java.util.List;
import java.util.Map;

import org.apache.tools.ant.taskdefs.condition.Or;

import com.base.framework.paging.PageInfo;
import com.base.framework.service.Manager;
import com.manage.org.model.Org;

/**
 * @author: LLJ
 * @see:
 * @param:
 * @date: 2013-6-4
 */
public interface OrgManager extends Manager{

	public List<Org> getOrgList(PageInfo pageInfo);

	public void saveOrg(Org org);
	
    public void removeOrgById(Integer id);

    public Org getOrgById(Integer id);

	public Org getOrgByName(String name, Integer parent);
	
	/**
	 * ��ѯ���б�tree
	 * @return
	 */
	public List<Object[]> getOrgList();
	
	/**
	 * ��ݸ���ID��ѯ�ӻ�
	 * @param orgid
	 * @return
	 */
	public List<Integer> getOrgListByParentOrg(String orgid);
	
	/**
	 * �õ����еĻ�����map��
	 * @return
	 */
	public Map<Integer, List<Org>> getAllOrg();

	public List getObjectBySql(String sql);
	
	/*
	 * �߼�ɾ��org
	 */
	public void updateOrg(Org org);
 
	
	public List<Org> getOrgListByPid(Integer pid);

 
	
	/**
	 * ��ݸ���ID������и����б�
	 * @param parentid
	 * @return
	 */
	public List<Org> getOrgFListByParentId(Integer parentid); 
	

	public int isNameRepeat(Org org);
 
}
