package com.manage.enumeration.action;

import java.util.List;

import com.base.util.LogUtil;
import com.base.util.StringUtils;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;

import com.manage.enumeration.action.info.EnumerationPageInfo;
import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.service.EnumerationManager;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.user.model.User;

public class EnumerationAction extends BaseAction{
	
	private Enumeration enumeration;
	private EnumerationPageInfo pageInfo;	
	private List<Enumeration> enumerations;
	private String orderIndexs;
	private String params;
	
	//Ψһ��֤
	private String result;
	private String enName;

	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	public String enumerationList() throws Exception {
		
		EnumerationManager enumerationMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
		pageInfo = pageInfo == null ? new EnumerationPageInfo() : pageInfo;
		//pageInfo.setF_enumerationType( 0 );
		//pageInfo.setF_enumerationType_op(Filter.OPERATOR_EQ);
		
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);		
		enumerations = enumerationMgr.getEnumerationList(sarchPageInfo);		
		return SUCCESS;	
	}
	
	public String saveEnumeration() throws Exception {
		EnumerationManager enumerationMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
		User u = (User)getSession().getAttribute("user");
		if(enumeration != null && u != null){
			enumeration.setCreator(u.getId());	
			/*List ls = enumeration.getEnumerationValues();
				if(!ls.isEmpty() && ls.size() > 0){
					for(int i = 0; i < ls.size(); i++){
						EnumerationValue ev = (EnumerationValue)ls.get(i);
						ev.setCreator(u.getId());
					}
				}*/

		}
		//// �ж���־�������ͣ�����ɾ��
		int typeNum = LogUtil.LOG_ADD_TYPE;
		if(enumeration.getId() != null){
			typeNum = LogUtil.LOG_UPDATE_TYPE;
		}
		enumeration.setEnName(StringUtils.delSpace(enumeration.getEnName())); //ȥ���ո�
		enumerationMgr.saveEnumeration(enumeration);
		
		
		     ///// ��¼������־
			logMgr.saveLog(typeNum, LogUtil.LOG_ENUMERATIONMANAGE_FUNCTION, enumeration.getId(), enumeration.getEnName(), u.getId(), u.getRealname(),getRequest());
			this.getRequest().setAttribute("title","枚举管理");
			this.getRequest().setAttribute("url","/admin/enumerationList.action");
			this.getRequest().setAttribute("params",this.params);
		
		
		return SUCCESS;
	}
	
	public String removeEnumeration() throws Exception {
		EnumerationManager enumerationMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
		enumeration = enumerationMgr.getEnumerationById(enumeration.getId());
		
		enumerationMgr.removeEnumerationById(enumeration.getId());
		
		///// ��¼������־
		User u = (User)getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ENUMERATIONMANAGE_FUNCTION, enumeration.getId(), enumeration.getEnName(), u.getId(), u.getRealname(),getRequest());
		
		return SUCCESS;
	}
	
	public String viewEnumeration() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		EnumerationManager enumerationMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
		enumeration = enumerationMgr.getEnumerationById(enumeration.getId());
		return SUCCESS;
	}
	
	public String removeAllEnumeration() throws Exception {
		EnumerationManager enumerationMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
		
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			User u = (User)getSession().getAttribute("user");
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					Integer enumerationid = new Integer( ids[i] );
					enumeration = enumerationMgr.getEnumerationById(enumerationid);
					
					enumerationMgr.removeEnumerationById(enumerationid);
					
					///// ��¼������־
					logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_ENUMERATIONMANAGE_FUNCTION, enumeration.getId(), enumeration.getEnName(), u.getId(), u.getRealname(),getRequest());
				}
			}
		}
		
		return SUCCESS;
	}
	
	/**
	 * Ψһ��֤
	 * @return
	 */
	public String checkEnumeration() {
		EnumerationManager enumerationMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
		enumeration = enumerationMgr.getEnumerationByName(enName);
		if(enumeration != null){
			result = "succ";
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	public Enumeration getEnumeration() {
		return enumeration;
	}

	public void setEnumeration(Enumeration enumeration) {
		this.enumeration = enumeration;
	}
	
	public List<Enumeration> getEnumerations() {
		return enumerations;
	}

	public void setEnumerations(List<Enumeration> enumerations) {
		this.enumerations = enumerations;
	}

	public EnumerationPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(EnumerationPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
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

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	
}
