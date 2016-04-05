package com.base.framework.dao.impl;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.base.util.BeanUtil;
import com.base.util.StringUtils;
import com.base.util.Utils;
import com.base.framework.dao.Dao;
import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.paging.Page;
import com.base.framework.paging.PageInfo;
import com.sdicons.json.validator.impl.predicates.Int;


public class DaoImpl extends HibernateDaoSupport implements Dao {

	protected final Log log = LogFactory.getLog(getClass());

	/**
	 * @author LLJ
	 * @date Nov 14, 2014 12:10:26 PM
	 * @see 清空缓存
	 */
	public void clear(){
		getHibernateTemplate().clear();
	}	
	
	/* (non-Javadoc)
	 * @see com.base.framework.dao.DAO#saveObject(java.lang.Object)
	 */
	public void saveObject(Object obj) {
		getHibernateTemplate().saveOrUpdate(obj );
	}
	
	public void saveObjects(Collection coll, int mode){
		getHibernateTemplate().saveOrUpdateAll(coll);
	}
	
	/* (non-Javadoc)
	 * @see com.base.framework.dao.DAO#removeObjectById(java.lang.Class, java.io.Serializable)
	 */
	public void removeObjectById(Class clazz, Serializable id) {
		getHibernateTemplate().delete(getObjectById(clazz, id));
	}

	/* (non-Javadoc)
	 * @see com.base.framework.dao.DAO#removeObject(java.lang.Object)
	 */
	public void removeObject(Object obj) {
		getHibernateTemplate().delete(obj);
	}

	/* (non-Javadoc)
	 * @see com.base.framework.dao.DAO#getObjectById(java.lang.Class, java.io.Serializable)
	 */
	public Object getObjectById(Class clazz, Serializable id) {
		return getHibernateTemplate().get(clazz, id);
	}

	
	public Object getUniqueObject(final Class clazz, final Filter filter){
		HibernateTemplate ht = getHibernateTemplate();
        Object result = ht.execute(new HibernateCallback() {
            public Object doInHibernate(Session session)
                    throws HibernateException, SQLException {
                return processUnique(session, clazz, filter);
            }
        });
        return result;
	}
	
	
	Object processUnique(Session session, Class clazz, Filter filter) {
		Query[] queries = setupQuery(session, clazz, filter, null, null);
		Query query = queries[0];
		long startTime = System.currentTimeMillis();
		Object result = query.uniqueResult();				//ִ��HQL��ѯ
		long endTime = System.currentTimeMillis();
		if(log.isTraceEnabled()){
			log.trace("Query string: " + query.getQueryString() + "\n\t use:" 
				+ (endTime - startTime) + "ms");
		}
		return result;
	}
	
	
	public List getObjects(Class clazz) {
		return getHibernateTemplate().loadAll(clazz);
	}
	
	
	public List getObjects(final Class clazz, final Filter filter){
		return getObjects(clazz, filter, null, null);
	}

	
	public List getObjects(final Class clazz, final Filter filter, final Sorter sorter){
		return getObjects(clazz, filter, sorter, null);
	}
	
	
	public List getObjects(final Class clazz, final Filter filter, final Sorter sorter, final Page page){
        HibernateTemplate ht = getHibernateTemplate();

        List result = ht.executeFind(new HibernateCallback() {
            public Object doInHibernate(Session session)
                    throws HibernateException, SQLException {
                return processFind(session, clazz, filter, sorter, page);
            }
        });
        return result;

	}
	
	public List getObjects(final Class clazz, final PageInfo pageInfo){
		if(pageInfo == null)
			return new ArrayList();
		
		Filter filter = null;
		Sorter sorter = null;
		Page page = null;
		filter = pageInfo.getFilter();
		sorter = pageInfo.getSorter();
		page = pageInfo.getPage();
		
		return getObjects(clazz, filter, sorter, page);
	}
	
	
	List processFind(Session session, Class clazz, Filter filter, Sorter sorter, Page page){
		Query[] querys = setupQuery(session, clazz, filter, sorter, page);
		return executQuery(querys, page);
	}

	
	List executQuery(Query[] querys, Page page){
		
		Query query = querys[0];
		Query countQuery = querys[1];
		
		if(page != null && countQuery != null){
			int count = 0;
			List countResult = countQuery.list();
			
			if(countResult != null && countResult.size() != 0){
				if (countResult.size() > 1 ) 
					count = countResult.size();
				else{
					Object result = countResult.get(0);
					if (result instanceof Integer) {
						count = ((Integer)result).intValue();
					}
					if (result instanceof Long) {
						count = ((Long) result).intValue();
					}
				}
				
				//�����ʵ��¼������޼�¼���ȡ����޼�¼��
				count = page.getMaxRecords() != 0 && count > page.getMaxRecords() ? page.getMaxRecords() : count;
					
				page.setTotalRecords(count);		//���ò�ѯ�����ܼ�¼��
				
				int totoalPage = 0;
				totoalPage= count%page.getPageSize() > 0 ? count/page.getPageSize() + 1  : count/page.getPageSize();
				page.setTotalPage(totoalPage);						//���ò�ѯ������ҳ��
			}
			
			query.setFirstResult(page.getStartRowPosition()); 	//���÷��صĵ�һ����¼��λ��
			
			if(page.getMaxRecords() != 0 && (page.getStartRowPosition() + page.getPageSize()) > page.getMaxRecords())
				query.setMaxResults(page.getMaxRecords() - page.getStartRowPosition());
			else
				query.setMaxResults(page.getPageSize());			//���÷��صļ�¼��
		}
		
		long startTime = System.currentTimeMillis();
		List result = query.list();								//ִ��HQL��ѯ
		//System.out.println("query.getQueryString() : " + query.getQueryString());
		long endTime = System.currentTimeMillis();
		if(log.isTraceEnabled()){
			log.trace("Query string: " + query.getQueryString() + "\n\t use:" 
				+ (endTime - startTime) + "ms");
		}
		
		return result;
	}
	
	private Query[] setupQuery(Session session, Class clazz, Filter filter, 
			Sorter sorter, Page page){
		
		StringBuffer mainSb = new StringBuffer(200); //��HQL���
		StringBuffer countSb = new StringBuffer(500); //ͳ�Ƽ�¼���HQL���
		String orderSt = "";					//������ַ�
		
		String aliasName = clazz.getSimpleName().toLowerCase() + "_1";
		countSb.append("select count(*) ");
		
		int length = 0;
		
		//���Ӳ�ѯ��ʽ��ֻ��ѯ���������ֶ�
		if(null != page && Utils.isNotNullOrEmpty(page.getProperties()) ){
			String properties = page.getProperties();
				StringBuffer propertySb = new StringBuffer(200);
				mainSb.append(" select new ");
				mainSb.append(clazz.getName());
				mainSb.append(" ( ");
				
				String[] propertyArray = properties.split(",");
				if( Utils.isNotNullOrEmpty(propertyArray) ){
					for(int i=0,cnt = propertyArray.length;i<cnt;i++){
						if(Utils.isNotNullOrEmpty(propertyArray[i].trim())){
							propertySb.append(aliasName + "." + propertyArray[i].trim() + ",");
						}
					}
					if(null != propertySb && propertySb.length()>0){
						mainSb.append(propertySb.substring(0, propertySb.length()-1));
					}
				}
				mainSb.append(" ) ");
				length = mainSb.length();
		}
		
		mainSb.append(" from ").append(clazz.getName()).append(" " + aliasName + " ");
		
		/*HQL�Ĺ��˲���*/
		if(filter != null && filter.getConditions().size() > 0){
			mainSb.append(" where ");
			List filterBeans = filter.getConditions();
			
			/*ΪHQL����������������ռλ��*/
			for (int i = 0; i<filterBeans.size(); i++) {
				FilterBean filterBean = (FilterBean) filterBeans.get(i);
				String operater = filterBean.getOperater();
				if(i > 0 )
					mainSb.append(filterBean.getRelations()).append(" ");			//�������������֮��Ĺ�ϵ��
				mainSb.append(aliasName + ".").append(filterBean.getFieldName()).append(" ");				//��Ӳ�ѯ���ֶ���
				
				Object val = filterBean.getValue();
				if(val == null){
					if (operater.equals(Filter.OPERATOR_EQ))
						mainSb.append("is null ");
					else
						mainSb.append("is not null ");
					continue;
				}
				
				mainSb.append(operater).append(" "); 				//��Ӳ�����
				
				if(operater.equals(Filter.OPERATOR_IN)){		//	����������IN����ÿһ��ֵ��Ӧһ������ռλ��
					mainSb.append("(");
					Collection coll = (Collection)filterBean.getValue();
					for(int j = 0; j < coll.size(); j++){
						if(j > 0)
							mainSb.append(",");
						mainSb.append("?");
					}
					mainSb.append(") ");
				}
				else
					mainSb.append("? ");								//�����λ����Ϊ����ռλ��
				
			}
			//����Լ���sql �������
			FilterSql filterSql = filter.getFilterSql();
			if(null != filterSql ){
				
				if( Utils.isNotNullOrEmpty(filterSql.getRelations()) &&
						Utils.isNotNullOrEmpty(filterSql.getSql() )){
					mainSb.append( filterSql.getRelations() + filterSql.getSql());
				}
				
			}
			
		}else{
			
			//����Լ���sql �������
			if(null != filter){
			FilterSql filterSql = filter.getFilterSql();
			if(null != filterSql ){
				
				if( Utils.isNotNullOrEmpty(filterSql.getRelations()) &&
						Utils.isNotNullOrEmpty(filterSql.getSql() )){
					mainSb.append(" where "); 
					mainSb.append(filterSql.getSql());
				}
				
			}
			}
			
		}
		
		/*HQL�����򲿷�*/
		if(sorter != null)
			orderSt = " order by " + aliasName + "." +sorter.toString();
		
		/*����ͳ�Ʒ��ز�ѯ��¼������Ҫ��ѯ��Queryʵ��*/
		Query countQuery = null, query = null;
		if (page != null) {
			if(length>0){
				//��ѯ����ʱ����ȡ�ֶβ�ѯ
				countQuery = session.createQuery(countSb.append(mainSb.subSequence(length, mainSb.length())).toString());//.setCacheable(true);
			}else{
				//countQuery = session.createQuery(countSb.append(mainSb).toString()).setCacheable(true);
				countQuery = session.createQuery(countSb.append(mainSb).toString());
			}
		}
//		query = session.createQuery(mainSb.append(orderSt).toString()).setCacheable(true);
		query = session.createQuery(mainSb.append(orderSt).toString());
		
		/*���������������ռλ���������Ӧ��ֵ*/
		if(filter != null  && filter.getConditions().size() > 0){
			IntWrapper mainIntWrapper = new IntWrapper();	//����һ�����㿪ʼ�ļ���������
			IntWrapper countIntWrapper = new IntWrapper();	//����һ�����㿪ʼ�ļ���������
			List filterBeans = filter.getConditions();
			for (Iterator i = filterBeans.iterator(); i.hasNext();) {
				FilterBean filterBean = (FilterBean) i.next();
				
				if(filterBean.getValue() == null)
					continue;
				
				String operater = filterBean.getOperater();
				
				/*�����ֵ���������ַ����Ҳ�������like����ֵ�����˼Ӱٷֺţ�%��*/
				if(operater.equals(Filter.OPERATOR_LIKE) && filterBean.getValue() instanceof String ){
					String val = (String)filterBean.getValue();
					val = "%" + val + "%";
					filterBean.setValue(val);
				}
				
				setParameter(query, mainIntWrapper, filterBean.getValue());  //ΪHQL��Query����,��������ռλ���ֵ
				if(page != null)
					setParameter(countQuery,countIntWrapper, filterBean.getValue());
			}
		}
		
		Query[] querys = {query, countQuery};
		return querys;
	}
	
    
    private void setParameter(Query query, IntWrapper index, Object value) {
    	if(value instanceof Collection){
    		Collection values = (Collection)value;
    		for (Iterator i = values.iterator(); i.hasNext();) {
				Object val = (Object) i.next();
				setParameterSingle(query, index.getInt(), val);
				index.IntAddOne();
			}
    	}
    	else{
    		 setParameterSingle(query, index.getInt(), value);
    		 index.IntAddOne();
    	}
    }
    
    private Query setParameterSingle(Query query, int index, Object value) {
        Query result;
        if (value instanceof Boolean) {
        	result = query.setBoolean(index, ((Boolean) value).booleanValue());
        } else if (value instanceof Byte) {
        	result = query.setByte(index, ((Byte) value).byteValue());
        } else if (value instanceof Character) {
        	result = query.setCharacter(index, ((Character) value).charValue());
        } else if (value instanceof Double) {
        	result = query.setDouble(index, ((Double) value).doubleValue());
        } else if (value instanceof Float) {
        	result = query.setFloat(index, ((Float) value).floatValue());
        } else if (value instanceof Integer) {
        	result = query.setInteger(index, ((Integer) value).intValue());
        } else if (value instanceof Long) {
        	result = query.setLong(index, ((Long) value).longValue());
        } else if (value instanceof Short) {
        	result = query.setShort(index, ((Short) value).shortValue());
        } else if (value instanceof String) {
        	result = query.setString(index, (String) value);
        } else if (value instanceof byte[]) {
        	result = query.setBinary(index, (byte[]) value);
        } else if (value instanceof BigDecimal) {
        	result = query.setBigDecimal(index, (BigDecimal) value);
        } else if (value instanceof BigInteger) {
        	result = query.setBigInteger(index, (BigInteger) value);
        } else if (value instanceof Date) {
        	result = query.setDate(index, (Date) value);
        } else if (value instanceof Time) {
        	result = query.setTime(index, (Time) value);
        } else if (value instanceof Timestamp) {
        	result = query.setTimestamp(index, (Timestamp) value);
        } else if (value instanceof java.util.Date) {
        	result = query.setDate(index, (java.util.Date) value);
        } else if (value instanceof Locale) {
        	result = query.setLocale(index, (Locale) value);
        } else {
        	result = query.setParameter(index, value);
        }
        return result;
    }
    
    /**
     * ��ݸ��HQL������ݿ��з�����HQL��һ�µĽ��
     * <p>����:select user.* from User user, Org org where org.id = user.org.id and org.id = 2
     * ͨ�����ӿɳ�������Ա�벿����Ȼ�Ѿ��趨��ϵ,����Ҳ�����˲��ŵĹ�������,������HQL��˵��ֻ��������User����Ϣ,
     * Ҳ����˵��ֻ����һ��ʵ������
     * <p>ע��:<code>getHQLObjects(String)</code>������<code>getHQLObjects(String, String, Class)</code>
     * ����Ҫ�������,<code>getHQLObjects(String)</code>������HQL�������ص�һ��ʵ������,���Һ������Ƿ���
     * ���ʵ�����͵������ٸ�ݸ��Class��װ�������Class����һ�µ�POJO���󼯺�
     * @param hql HQL���,ע���HQL������select������ֻ��һ��ʵ��Ľ���б�
     * @return ����ָ�����Ͷ����<code>List</code>����
	 * @see #getHQLObjects(String, String, Class)
	 */
    protected List getHQLObjects(String hql){
    	return this.getHQLObjects(hql, null, null, null, null, null);
    }
    
    
     protected List getHQLObjects(String hql, Page page){
     	return this.getHQLObjects(hql, null, null, null, null, page);
     }
         
	
    protected List getHQLObjects(String hql, String propertyNames, Class clazz){
    	return this.getHQLObjects(hql, propertyNames, clazz, null, null);
    }


    
    protected List getHQLObjects(String hql, String propertyNames, Class clazz, Page page){
    	return this.getHQLObjects(hql, propertyNames, clazz, null, null, page);
    }
    
    
    private List getHQLObjects(String hql, Filter filter){
    	return getHQLObjects(hql, null, null, filter, null);
    }
    
	
    private List getHQLObjects(String hql, String propertyNames, Class clazz, Filter filter){
    	return getHQLObjects(hql, propertyNames, clazz, filter, null);
    }

     
    private List getHQLObjects(String hql, Filter filter, Sorter sorter){
    	return getHQLObjects(hql, null, null, filter, sorter, null);
    }    
    
	
    private List getHQLObjects(String hql, String propertyNames, Class clazz, Filter filter, Sorter sorter){
    	return getHQLObjects(hql, propertyNames, clazz, filter, sorter, null);
    }
    
    
    private List getHQLObjects(final String hql,  final Filter filter, final Sorter sorter, final Page page){
    	return getHQLObjects(hql, null, null, filter, sorter, null);
    }
    
	
    private List getHQLObjects(final String hql, String propertyNames, Class clazz, final Filter filter, final Sorter sorter, final Page page){
    	
    	List result = new ArrayList();
    	if(hql == null || hql.trim().equals(""))
    		return result;
    	
    	HibernateTemplate ht = getHibernateTemplate();
        List hqlResult = ht.executeFind(new HibernateCallback() {
            public Object doInHibernate(Session session)
                    throws HibernateException, SQLException {
                return processFind(session, hql, filter, sorter, page);
            }
        });
        
        if(propertyNames == null)
        	return hqlResult;
        
        //��hql���صĽ���װΪ���󼯺�
        String[] propertyNamesArray = StringUtils.strToStrArray(propertyNames);
        for (Iterator iter = hqlResult.iterator(); iter.hasNext();) {
        	Object bean = null;
			try {
				bean = clazz.newInstance();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
			
			Object[] valueArray = (Object[]) iter.next();
			
			for (int i = 0; i < valueArray.length; i++) {
				BeanUtil.ognlPropertyValue(bean, propertyNamesArray[i], valueArray[i]);		//ͨ��OGNL�����Ͷ�����㸳ֵ
			}
			result.add(bean);
		}
        
    	return result;
    }
    
    
	List processFind(Session session, String hql, Filter filter, Sorter sorter, Page page){
		Query[] querys = setupQuery(session, hql, filter, sorter, page);
		return executQuery(querys, page);
	}
    
	private Query[] setupQuery(Session session, String hql, Filter filter, Sorter sorter, Page page){
		
		StringBuffer mainSb = new StringBuffer(); //��HQL���
		StringBuffer countSb = new StringBuffer(); //ͳ�Ƽ�¼���HQL���
		String orderSt = "";					//������ַ�
		
		mainSb.append(hql);
		
		countSb.append("select count(*) ");
		if(!StringUtils.trimLeft(hql).startsWith("from"))
			countSb.append("from ");
		
		/*HQL�Ĺ��˲���*/
		if(filter != null && filter.getConditions().size() > 0){
			
			if(StringUtils.isInclude(hql, "where"))
				mainSb.append(" and ");
			else
				mainSb.append(" where ");
			
			List filterBeans = filter.getConditions();
			
			/*ΪHQL����������������ռλ��*/
			for (int i = 0; i<filterBeans.size(); i++) {
				FilterBean filterBean = (FilterBean) filterBeans.get(i);
				String operater = filterBean.getOperater();
				if(i > 0 )
					mainSb.append(filterBean.getRelations()).append(" ");			//�������������֮��Ĺ�ϵ��
				mainSb.append(filterBean.getFieldName()).append(" ");				//��Ӳ�ѯ���ֶ���
				mainSb.append(operater).append(" "); 				//��Ӳ�����

				if(operater.equals(Filter.OPERATOR_IN)){		//	����������IN����ÿһ��ֵ��Ӧһ������ռλ��
					mainSb.append("(");
					Collection coll = (Collection)filterBean.getValue();
					for(int j = 0; j < coll.size(); j++){
						if(j > 0)
							mainSb.append(",");
						mainSb.append("?");
					}
					mainSb.append(") ");
				}
				else
					mainSb.append("? ");								//�����λ����Ϊ����ռλ��
			}
		}
		
		/*HQL�����򲿷�*/
		if(sorter != null)
			orderSt = " order by " + sorter.toString();
		
		/*����ͳ�Ʒ��ز�ѯ��¼������Ҫ��ѯ��Queryʵ��*/
		Query countQuery = null, query = null;
		String mainString = mainSb.toString();
		if (page != null) {
			String countString = mainString.toString();
			if(!StringUtils.trimLeft(hql).startsWith("from"))
				countString = mainString.substring(mainString.indexOf("from") + 4);
			countQuery = session.createQuery(countSb.append(countString).toString());
		}
		query = session.createQuery(mainString + orderSt);
		
		/*���������������ռλ���������Ӧ��ֵ*/
		if(filter != null  && filter.getConditions().size() > 0){
			IntWrapper mainIntWrapper = new IntWrapper();	//����һ�����㿪ʼ�ļ���������
			IntWrapper countIntWrapper = new IntWrapper();	//����һ�����㿪ʼ�ļ���������
			List filterBeans = filter.getConditions();
			for (Iterator i = filterBeans.iterator(); i.hasNext();) {
				FilterBean filterBean = (FilterBean) i.next();
				String operater = filterBean.getOperater();
				
				/*�����ֵ���������ַ����Ҳ�������like����ֵ�����˼Ӱٷֺţ�%��*/
				if(operater.equals(Filter.OPERATOR_LIKE) && filterBean.getValue() instanceof String ){
					String val = (String)filterBean.getValue();
					val = "%" + val + "%";
					filterBean.setValue(val);
				}
				
				setParameter(query, mainIntWrapper, filterBean.getValue());  //ΪHQL��Query����,��������ռλ���ֵ
				if(page != null)
					setParameter(countQuery,countIntWrapper, filterBean.getValue());
			}
		}
		
		Query[] querys = {query, countQuery};
		return querys;
	}

	/**
	 * ��ݸ��HQL������ݿ��з�����HQL��һ�µĽ��
	 * <p>����page��pageInfo���������pageInfo�Ƕ�filter/sorter/page����һ���װ
	 * @param hql HQL���,ע���HQL������select��Ҫ��ѯ�Ľ���б�
	 * @param clazz ���װ������
	 * @param pageInfo ���ѯ��ҳ����Ϣ
     * @return ����ָ�����Ͷ����<code>List</code>����
     * @see com.base.framework.paging.PageInfo
	 * @see com.base.framework.dao.Filter
	 * @see com.base.framework.dao.Sorter
	 * @ses com.base.framework.paging.Page
	 * @see #getObjects(Class, PageInfo)
	 * @see #getHQLObjects(String, String, Class, PageInfo)
	 */	
	private List getHQLObjects(String hql, PageInfo pageInfo){
		return getHQLObjects(hql, null, null, pageInfo);
	}
	
	
	private List getHQLObjects(String hql, String propertyNames, Class clazz, PageInfo pageInfo){
		if(pageInfo == null)
			return new ArrayList();
		
		Filter filter = null;
		Sorter sorter = null;
		Page page = null;
		filter = pageInfo.getFilter();
		sorter = pageInfo.getSorter();
		page = pageInfo.getPage();
		return getHQLObjects(hql, propertyNames, clazz, filter, sorter, page);
    }
 
    /**
     * ��������װ��
     */
    private class IntWrapper{
    	int i = 0;
    	int getInt(){
    		return i;
    	}
    	
    	void IntAddOne(){
    		i++;
    	}
    }
    
    
    public int executeHqlToSql(String hql,Map<String,Object> map){
    	
    	Query query = this.getSession().createSQLQuery(hql);//createQuery(hql);
    	query.setProperties(map);
    	int num = query.executeUpdate();
    	return num;
    	
    }
    
    /**
     * 根据SQL数据更新数据
     */
	@Override
	public List executeSQLForUpdate(String sql) {
		Query query = this.getSession().createSQLQuery(sql);
		List list = null;
		if(sql.indexOf("select")>=0){
			list = query.list();
		}else{
			int num = query.executeUpdate();
			list = new  ArrayList<Integer>();
			list.add(num);
		}
		return list;
	}

	/**
	 * @param clazz  实体类
	 * @param condition  查询条件（）
	 * @param name  查询条件的值 
	 */
	@Override
	public Object getObjectByName(Class clazz,String condition,String name) {
		StringBuffer mainSb = new StringBuffer(200);
		String aliasName = clazz.getSimpleName().toLowerCase() + "_1";
		mainSb.append(" from ").append(clazz.getName()).append(" " + aliasName + " ");
		mainSb.append("  where  "+ aliasName +"."+condition+"='"+name+"'");
		Query query = this.getSession().createQuery(mainSb.toString());
		Object obj;
		List list = query.list();
		if(list!=null && list.size()>0){
			obj = list.get(0);
			return obj;
		}
		return null;
	}
    
}

