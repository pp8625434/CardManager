package com.manage.user.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.UserRole;
import com.manage.user.dao.UserDao;
import com.manage.user.model.User;

public class UserDaoImpl extends DaoImpl implements UserDao{
	
	public void updateUser(User user) {
		getHibernateTemplate().update(user);
	}
	
	public List<Role> getRoleList() {
		return getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from com.base.framework.security.model.Role info where info.id <> 1";
				Query query = session.createQuery(hql);
				return query.list();
			}
		});
	}
	
	
	public List<Object> getUserRole(final Integer userid){
		return getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "select role from Role role,UserRole userrole where userrole.role = role.id and " +
						"userrole.securityUser = :userid ";
				return session.createQuery(hql).setString("userid", userid.toString()).list();
			}
			
		} );
		
	}
	
	
	
	
	
	public List<UserRole> getUserRoleList(final Integer userid) {
		return getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from com.base.framework.security.model.UserRole info where info.securityUser = :userid ";
				Query query = session.createQuery(hql);
				query.setString("userid", userid.toString());
				return query.list();
			}
		});
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
	
	public User getUserByName(final String userName,final String userPassWord){
		return (User) (getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
//				String hql = " select new com.manage.user.model.User(user.id,user.version, user.name, user.nickname, user.realname,"
//					+" user.password, user.createdate, user.updatedate,user.isopen,user.orgId,user.orgName,user.accountoverdate) "
//				+"  from User user where user.name ='"+userName+"' and user.password = '"+userPassWord+"' ";
				String hql = "  from User user where user.name ='"+userName+"' and user.password = '"+userPassWord+"' ";
				Query query=session.createQuery(hql).setCacheable(true);
				query.setFirstResult(0);
				query.setMaxResults(1);
				return query.uniqueResult();
			}
		}));
	}
	
	public List<User> getUserInOrgId(String orgid) {
		String hql = "from com.manage.user.model.User info";
		if(orgid != null && !"".equals(orgid)) {
			hql += " where info.orgId in ("+orgid+")";
		}
		return getHibernateTemplate().find(hql);
	}
	
	/* (non-Javadoc) 获取部门下的所用用户（已开通的、未过期）
	 * @see com.manage.user.dao.UserDao#getUserInOrgIdNew(java.lang.String)
	 */
	public List<User> getUserInOrgIdNew(String orgid){
		String hql = "from com.manage.user.model.User info where info.isopen=1 and (info.accountoverdate is null || info.accountoverdate > now()) and id != 0";
		if(orgid != null && !"".equals(orgid)) {
			hql += " and info.orgId in ("+orgid+")";
		}
		return getHibernateTemplate().find(hql);
	}
 

	@SuppressWarnings("unchecked")
	@Override
	public int getPassById(Integer userid, String password) {
		String hql = "select count(*) from com.manage.user.model.User info where info.id = "+userid+" and info.password = '" + password+"'";
		return Integer.parseInt(getHibernateTemplate().find(hql).get(0).toString()); 
	}
 
	/* (non-Javadoc)删除角色表中，该用户相关信息
	 * @see com.manage.user.dao.UserDao#removeUserRoleByUserId(java.lang.Integer)
	 */
	@Override
	public void removeUserRoleByUserId(Integer id) {
		String hql = "from com.base.framework.security.model.UserRole info where info.securityUser = '"+id+"'";
		List<UserRole> list = getHibernateTemplate().find(hql);
		if(list != null && list.size() > 0){
			getHibernateTemplate().deleteAll(list);
		}
		
	}
	
}
