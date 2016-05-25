package com.manage.org.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.util.Utils;
import com.base.framework.dao.impl.DaoImpl;
import com.base.framework.paging.PageInfo;
import com.manage.org.dao.OrgDao;
import com.manage.org.model.Org;


public class OrgDaoImpl extends DaoImpl implements OrgDao {

	public Org getOrgByName(String name) {
		String hql = "from com.manage.org.model.Org info where info.name='"+name+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Org)list.get(0);
		}
		return null;
	}
	
	public Org getOrgByName(String name, Integer parent) {
		String hql = "from com.manage.org.model.Org info where info.name='"+name+"' and info.deleted=0 and info.parent="+parent;
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size() >0) {
			return (Org)list.get(0);
		}
		return null;
	}

	public List<Object[]> getOrgList() {
		return getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String sql = "select info.ID, info.NAME, info.PARENT from p_org info";
				Query query = session.createSQLQuery(sql);
				return query.list();
			}
		});
	}
	
	public List<Integer> getOrgListByParentOrg(final String orgid) {
		
		/*
		return getHibernateTemplate().executeFind(new HibernateCallback(){
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String sql = "select info.id from com.manage.org.model.Org info where info.parentOrg.id = '"+orgid+"'";
				Query query = session.createQuery(sql);
				return query.list();
			}
		});
		*/
		String hql = "select info.id from com.manage.org.model.Org info where info.parent = '"+orgid+"'";
		return getHibernateTemplate().find(hql);
	}
	
	public List<Org> getOrgListByPid(Integer pid){
		String hql = "from com.manage.org.model.Org info where info.parent = "+pid;
		return getHibernateTemplate().find(hql);
		
	}
	
	public List<Org> getAllOrgList() {
		String hql = "from com.manage.org.model.Org";
		return getHibernateTemplate().find(hql);
	}

	public List getObjectBySql(final String hql) {
		return getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
					Query query = session.createQuery(hql);
				return query.list();
			}
		});
	}

	public int updateOrgByOrgName(Integer orgId, String orgName) {
		String hql = " update p_user c set c.ORGNAME=:orgName WHERE  c.ORGID=:orgId";
		Map<String,Object> map = new HashMap<String,Object>();
		if(Utils.isNotNullOrEmpty(orgId)){
			map.put("orgId", orgId);
		}
		if(Utils.isNotNullOrEmpty(orgName)){
			map.put("orgName",orgName );
		}
		return this.executeHqlToSql(hql, map);
	}
	
	public int updateOrgByParent(Integer orgId, String orgName) {
		String hql = " update p_org c set c.PARENTNAME=:parentName WHERE  c.PARENT=:parent";
		Map<String,Object> map = new HashMap<String,Object>();
		if(Utils.isNotNullOrEmpty(orgId)){
			map.put("parent", orgId);
		}
		if(Utils.isNotNullOrEmpty(orgName)){
			map.put("parentName",orgName );
		}
		return this.executeHqlToSql(hql, map);
	}
	/*
	 * �߼�ɾ����
	 */
	public void upDateOrg(Org org){
		this.getHibernateTemplate().saveOrUpdate(org);
	}


	@SuppressWarnings("unchecked")
	public List isNameRepeat(Org org) {
		final String sql = getSql(org);
		return this.getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createSQLQuery(sql);
				return query.list();
			}
		});
	}
	
	private String getSql (Org org){
		String sql = "select count(id) from p_org  where PARENT = "+org.getParent()+" and NAME = '"+ org.getName()+"' and DELETED =0 ";
		if(null != org.getId()){
			sql = sql + "and ID !="+org.getId();
		}
		return sql;
	}
}
