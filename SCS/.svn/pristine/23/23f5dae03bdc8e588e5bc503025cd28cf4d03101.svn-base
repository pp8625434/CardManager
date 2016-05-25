package com.manage.smediumborrow.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;

import com.manage.smediumborrow.action.info.SmediumborrowPageInfo;
import com.manage.smediumborrow.model.SSmediumborrowTab;
import com.manage.smediumborrow.service.SmediumborrowManager;
import com.manage.user.model.User;

/**
 * 专用存储介质借用审批
 * @author GGM
 *
 */
public class SmediumborrowAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SmediumborrowAction.class);
	private SmediumborrowPageInfo pageInfo;
	private SSmediumborrowTab smediumborrow;
	private List<SSmediumborrowTab> sborrowList;
	private String params;
	private String ids;
	
	private SmediumborrowManager sborrowmediumManager = (SmediumborrowManager) SpringContextHolder.getBean(SSmediumborrowTab.class);
	
	/**
	 * @see 专用存储介质借用审批列表
	 * @author GGM
	 * @date May 17, 2016 01:20:10 PM
	 */
	public String smediumborrowList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SmediumborrowPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			sborrowList = sborrowmediumManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看专用存储介质借用审批
	 * @author GGM
	 * @date May 17, 2016 01:30:20 PM
	 */
	public String smediumborrowInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(smediumborrow != null && smediumborrow.getId() != null){
				smediumborrow = (SSmediumborrowTab) sborrowmediumManager.getObjectById(smediumborrow.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑专用存储介质借用审批
	 * @author GGM
	 * @date May 17, 2016 01:43:11 PM
	 */
	public String smediumborrowEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(smediumborrow != null && smediumborrow.getId() != null){
				smediumborrow = (SSmediumborrowTab) sborrowmediumManager.getObjectById(smediumborrow.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存专用存储介质借用审批
	 * @author GGM
	 * @date May 17, 2016 01:52:23 PM
	 */
	public String saveSmediumborrow()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(smediumborrow.getVersion() == null){
				smediumborrow.setVersion(0);
			}
			if(smediumborrow.getDepartmentdate()==null){
				smediumborrow.setDepartmentdate(date);
			}
			if(smediumborrow.getOfficedate()== null){
				smediumborrow.setOfficedate(date);
			}
			if(smediumborrow.getCleardate() == null){
				smediumborrow.setCleardate(date);
			}
			smediumborrow.setUserid(user.getId());
			smediumborrow.setUsername(user.getRealname());
			
			sborrowmediumManager.saveObject(smediumborrow);
			
			this.getRequest().setAttribute("title", "专用存储介质借用审批");
			this.getRequest().setAttribute("url", "/smediumborrow/smediumborrowList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除专用存储介质借用审批
	 * @author GGM
	 * @date May 17, 2016 02:10:12 PM
	 */
	public String delSmediumborrow()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							smediumborrow = (SSmediumborrowTab) sborrowmediumManager.getObjectById(Integer.parseInt(pid));
							sborrowmediumManager.removeObjectById(smediumborrow.getId());
						}
					}
				}
			}
		
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public SmediumborrowPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SmediumborrowPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SSmediumborrowTab getSmediumborrow() {
		return smediumborrow;
	}

	public void setSmediumborrow(SSmediumborrowTab smediumborrow) {
		this.smediumborrow = smediumborrow;
	}

	public List<SSmediumborrowTab> getSborrowList() {
		return sborrowList;
	}

	public void setSborrowList(List<SSmediumborrowTab> sborrowList) {
		this.sborrowList = sborrowList;
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
