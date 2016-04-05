package com.manage.log.dao.impl;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

import com.base.framework.dao.impl.DaoImpl;
import com.manage.log.dao.LogDao;

/** 系统操作日志
 * @author yzh
 *
 */
public class LogDaoImpl extends DaoImpl implements LogDao{

	@Override
	public void deleteOldLogByDate(String str) {
		
		String hql = "from com.manage.log.model.Log info where info.createDate <= '"+str+"'";
		List list = getHibernateTemplate().find(hql);
		if(list != null && list.size()>0){
			getHibernateTemplate().deleteAll(list);
			System.out.println("成功删除："+list.size()+" 条日志记录");
		}else{
			System.out.println("没有符合条件的数据！");
		}
		
	}
	
}
