package com.manage.log.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.base.util.FormatDate;
import com.base.util.GUIDUtil;
import com.base.util.IpUtil;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.enumeration.EnumerationHelper;
import com.manage.log.dao.LogDao;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;

/** 系统操作日志
 * @author yzh
 *
 */
public class LogManagerImpl extends ManagerImpl implements LogManager{
    
	
	/* (non-Javadoc) 保存操作日志
	 * @see com.manage.log.service.LogManager#saveLog(java.lang.Integer, java.lang.Integer, java.lang.Integer, java.lang.String, java.lang.Integer, java.lang.String)
	 */
	public void saveLog(Integer type, Integer function, Integer functionId, 
			String functionName, Integer creator, String creatorName,HttpServletRequest request){
		
		Log log = new Log(type, function, functionId, functionName, creator, creatorName);
		log.setId(GUIDUtil.generateGUID());
		log.setVersion(0);
		log.setCreateDate(new Date());
		String functionStr = EnumerationHelper.getEnumerationValue(function).getDisplayRef();
		String typeStr = EnumerationHelper.getEnumerationValue(type).getDisplayRef();
		log.setMessage(creatorName + "在【" + functionStr + "】下" + typeStr + "了一条ID为" + functionId + "、name为" + functionName + "的信息！");
		log.setIpAddress(IpUtil.getIpAddr(request));
		super.saveObject(log);
	}

	/* (non-Javadoc)删除一个月之前的日志
	 * @see com.manage.log.service.LogManager#deleteOldLog()
	 */
	@Override
	public void deleteOldLog() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH, -1);
	    DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String str = fmt.format(c.getTime()); //获得一个月前的时间
	    ((LogDao)dao).deleteOldLogByDate(str);
	   
	}
	
}
