package com.manage.pcinternetdeclear.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;

import com.manage.pcinternetdeclear.action.info.InternetdeclearPageInfo;
import com.manage.pcinternetdeclear.model.SPcinternetdeclearTab;
import com.manage.pcinternetdeclear.service.InternetdeclearManager;
import com.manage.user.model.User;

/**
 * 计算机国际联网申报审批
 * @author GGM
 *
 */
public class InternetdeclearAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(InternetdeclearAction.class);
	private InternetdeclearPageInfo pageInfo;
	private SPcinternetdeclearTab internetdeclear;
	private List<SPcinternetdeclearTab> internetList;
	private String params;
	private String ids;
	
	private InternetdeclearManager internetdeclearManager = (InternetdeclearManager) SpringContextHolder.getBean(SPcinternetdeclearTab.class);
	
	/**
	 * @see 计算机国际联网申报审批列表
	 * @author GGM
	 * @date May 17, 2016 04:35:11 PM
	 */
	public String internetdeclearList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new InternetdeclearPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			internetList = internetdeclearManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看计算机国际联网申报审批
	 * @author GGM
	 * @date May 17, 2016 04:45:20 PM
	 */
	public String internetdeclearInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(internetdeclear != null && internetdeclear.getId() != null){
				internetdeclear = (SPcinternetdeclearTab) internetdeclearManager.getObjectById(internetdeclear.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑计算机国际联网申报审批
	 * @author GGM
	 * @date May 17, 2016 04:58:11 PM
	 */
	public String internetdeclearEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(internetdeclear != null && internetdeclear.getId() != null){
				internetdeclear = (SPcinternetdeclearTab) internetdeclearManager.getObjectById(internetdeclear.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存计算机国际联网申报审批
	 * @author GGM
	 * @date May 17, 2016 05:13:23 PM
	 */
	public String saveInternetdeclear()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(internetdeclear.getVersion() == null){
				internetdeclear.setVersion(0);
			}
			if(internetdeclear.getDepartmentdate()==null){
				internetdeclear.setDepartmentdate(date);
			}
			if(internetdeclear.getComdepartdate()== null){
				internetdeclear.setComdepartdate(date);
			}
			internetdeclear.setUserid(user.getId());
			internetdeclear.setUsername(user.getRealname());
			
			internetdeclearManager.saveObject(internetdeclear);
			
			this.getRequest().setAttribute("title", "计算机国际联网申报审批");
			this.getRequest().setAttribute("url", "/internetdeclear/internetdeclearList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除计算机国际联网申报审批
	 * @author GGM
	 * @date May 17, 2016 05:26:12 PM
	 */
	public String delInternetdeclear()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							internetdeclear = (SPcinternetdeclearTab) internetdeclearManager.getObjectById(Integer.parseInt(pid));
							internetdeclearManager.removeObjectById(internetdeclear.getId());
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

	public InternetdeclearPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(InternetdeclearPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SPcinternetdeclearTab getInternetdeclear() {
		return internetdeclear;
	}

	public void setInternetdeclear(SPcinternetdeclearTab internetdeclear) {
		this.internetdeclear = internetdeclear;
	}

	public List<SPcinternetdeclearTab> getInternetList() {
		return internetList;
	}

	public void setInternetList(List<SPcinternetdeclearTab> internetList) {
		this.internetList = internetList;
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
