package com.manage.securityedu.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.examclassification.action.info.ClassifiedPageInfo;
import com.manage.securityedu.action.info.SecurityeduPageInfo;
import com.manage.securityedu.model.SSecurityeduTab;
import com.manage.securityedu.service.SecurityeduManager;
import com.manage.user.model.User;

/**
 * 新进涉密岗位人员岗前保密教育培训记录
 * @author GGM
 *
 */
public class SecurityeduAction extends BaseAction{

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SecurityeduAction.class);
	private SecurityeduPageInfo pageInfo;
	private SSecurityeduTab securityedu;
	private List<SSecurityeduTab> secList;
	private String params;
	private String ids;
	
	private SecurityeduManager securityeduManager = (SecurityeduManager) SpringContextHolder.getBean(SSecurityeduTab.class);
	
	/**
	 * @see 获得教育培训记录列表
	 * @author GGM
	 * @date May 11, 2016 4:17:58 PM
	 */
	public String securityeduList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SecurityeduPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			secList = securityeduManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看新进涉密岗位人员岗前保密教育培训记录
	 * @author GGM
	 * @date May 11, 2016 4:38:19 PM
	 */
	public String securityeduInfo()throws Exception{
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(securityedu != null && securityedu.getId() != null){
				securityedu = (SSecurityeduTab) securityeduManager.getObjectById(securityedu.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑新进涉密岗位人员岗前保密教育培训记录
	 * @author GGM
	 * @date May 11, 2016 4:40:53 PM
	 */
	public String securityeduEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(securityedu != null && securityedu.getId() != null){
				securityedu = (SSecurityeduTab) securityeduManager.getObjectById(securityedu.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存新进涉密岗位人员岗前保密教育培训记录
	 * @author GGM
	 * @date May 11, 2016 4:46:42 PM
	 */
	public String saveSecurityedu()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			
			if(securityedu.getVersion() == null){
				securityedu.setVersion(0);
			}
			if(securityedu.getSigndate() == null){
				securityedu.setSigndate(date);
			}
			if(securityedu.getRedate() == null){
				securityedu.setRedate(date);
			}
			securityedu.setUserid(user.getId());
			securityedu.setUsername(user.getRealname());
			
			securityeduManager.saveObject(securityedu);
			
			this.getRequest().setAttribute("title", "新进涉密岗位人员岗前保密教育培训记录");
			this.getRequest().setAttribute("url", "/securityedu/securityeduList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除新进涉密岗位人员岗前保密教育培训记录
	 * @author GGM
	 * @date May 11, 2016 5:37:29 PM
	 */
	public String delSecurityedu()throws Exception{
		
		if(Utils.isNotNullOrEmpty(ids)){
			String[] seids = ids.split(",");
			if(seids != null && seids.length>0){
				for(String seid:seids){
					if(seid !=null && !"".equals(seid)){
						securityedu = (SSecurityeduTab) securityeduManager.getObjectById(Integer.parseInt(seid));
						securityeduManager.removeObjectById(securityedu.getId());
					}
				}
			}
		}
		return SUCCESS;
	}
	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public SecurityeduPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SecurityeduPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SSecurityeduTab getSecurityedu() {
		return securityedu;
	}

	public void setSecurityedu(SSecurityeduTab securityedu) {
		this.securityedu = securityedu;
	}

	public List<SSecurityeduTab> getSecList() {
		return secList;
	}

	public void setSecList(List<SSecurityeduTab> secList) {
		this.secList = secList;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}
}
