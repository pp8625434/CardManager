package com.manage.enumeration.action;

import java.util.List;

import com.base.util.LogUtil;
import com.base.util.StringUtils;
import com.base.util.Utils;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;

import com.manage.enumeration.action.info.EnumerationPageInfo;
import com.manage.enumeration.action.info.EnumerationValuePageInfo;
import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.model.EnumerationValue;
import com.manage.enumeration.service.EnumerationManager;
import com.manage.enumeration.service.EnumerationValueManager;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.user.model.User;

public class EnumerationValueAction extends BaseAction{
	
	private EnumerationValue enumerationValue;
	private String orderIndexs;
	private EnumerationValuePageInfo pageInfo;
	private List<EnumerationValue> enumerationValues;
	private String params ;
	private String result;
	private String valueName;
	
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	public String enumerationValueList() throws Exception {
		EnumerationValueManager enumerationValueMgr = (EnumerationValueManager)SpringContextHolder.getBean(EnumerationValue.class);
		pageInfo = pageInfo == null ? new EnumerationValuePageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
		
		enumerationValues = enumerationValueMgr.getEnumerationValueList(sarchPageInfo);
		
		return SUCCESS;
	}
	
	public String saveEnumerationValue() throws Exception {
		///////
		User u = (User)getSession().getAttribute("user");
		if(enumerationValue != null && u != null){
			enumerationValue.setCreator(u.getId());
		}
		
		EnumerationValueManager enumerationValueMgr = (EnumerationValueManager)SpringContextHolder.getBean(EnumerationValue.class);
    	if(!Utils.isNullOrEmpty( enumerationValue.getValueName()) 
    			&& null != enumerationValue.getEnumeration() 
    			&& null != enumerationValue.getEnumeration().getEnumerationValues() ){
    		enumerationValue.getEnumeration().getEnumerationValues().add(enumerationValue);
    	}
    	//// 判断日志操作类型（增、删）
		int typeNum = LogUtil.LOG_ADD_TYPE;
		if(enumerationValue.getId() != null){
			typeNum = LogUtil.LOG_UPDATE_TYPE;
		}
		enumerationValue.setValueName(StringUtils.delSpace(enumerationValue.getValueName())); //去掉空格
		enumerationValueMgr.saveEnumerationValue(enumerationValue);
		
		///// 记录操作日志
		logMgr.saveLog(typeNum, LogUtil.LOG_ENUMERATIONVALUEMANAGE_FUNCTION, enumerationValue.getId(), enumerationValue.getDisplayRef(), u.getId(), u.getRealname(),getRequest());
		
		this.getRequest().setAttribute("title","枚举值管理");
		this.getRequest().setAttribute("url","/admin/enumerationValueList.action");
		this.getRequest().setAttribute("params",this.params);
		return SUCCESS;
	}
	
	public String removeEnumerationValue() throws Exception {
		EnumerationValueManager enumerationValueMgr = (EnumerationValueManager)SpringContextHolder.getBean(EnumerationValue.class);
		enumerationValue = enumerationValueMgr.getEnumerationValueById(enumerationValue.getId());
		
		enumerationValueMgr.removeEnumerationValueById(enumerationValue.getId());
		
		///// 记录操作日志
		User u = (User)getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ENUMERATIONVALUEMANAGE_FUNCTION, enumerationValue.getId(), enumerationValue.getDisplayRef(), u.getId(), u.getRealname(),getRequest());
		
		return SUCCESS;
	}
	
	public String viewEnumerationValue() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		EnumerationValueManager enumerationValueMgr = (EnumerationValueManager)SpringContextHolder.getBean(EnumerationValue.class);
		enumerationValue = enumerationValueMgr.getEnumerationValueById(enumerationValue.getId());
		return SUCCESS;
	}
	
	public String removeAllEnumerationValue() throws Exception {
		EnumerationValueManager enumerationValueMgr = (EnumerationValueManager)SpringContextHolder.getBean(EnumerationValue.class);
		
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			User u = (User)getSession().getAttribute("user");
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					Integer enumerationValueid = new Integer( ids[i] );
					enumerationValue = enumerationValueMgr.getEnumerationValueById(enumerationValueid);
					
					enumerationValueMgr.removeEnumerationValueById(enumerationValueid);
					
					///// 记录操作日志
					logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ENUMERATIONVALUEMANAGE_FUNCTION, enumerationValue.getId(), enumerationValue.getDisplayRef(), u.getId(), u.getRealname(),getRequest());
				}
			}
		}
		
		return SUCCESS;
	}
	
	public String checkEnumerationValue() {
		EnumerationValueManager enumerationValueMgr = (EnumerationValueManager)SpringContextHolder.getBean(EnumerationValue.class);
		String eid = this.getParameter("enumerationID");
		if(eid!=null && !"".equals(eid)){
			enumerationValue = enumerationValueMgr.getEnumerationValueByNameAndId(valueName,Integer.parseInt(eid));
		}else{			
			enumerationValue = enumerationValueMgr.getEnumerationValueByName(valueName);
		}
		if(enumerationValue != null){
			result = "succ";
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
	
	public EnumerationValue getEnumerationValue() {
		return enumerationValue;
	}

	public void setEnumerationValue(EnumerationValue enumerationValue) {
		this.enumerationValue = enumerationValue;
	}
	
	public List<EnumerationValue> getEnumerationValues() {
		return enumerationValues;
	}

	public void setEnumerationValues(List<EnumerationValue> enumerationValues) {
		this.enumerationValues = enumerationValues;
	}

	public EnumerationValuePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(EnumerationValuePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getValueName() {
		return valueName;
	}

	public void setValueName(String valueName) {
		this.valueName = valueName;
	}	
	
}
