package com.manage.secretonline.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.secretonline.action.info.SecretonlinePageInfo;
import com.manage.secretonline.model.SSecretonlineTab;
import com.manage.secretonline.service.SecretonlineManager;
import com.manage.user.model.User;

/**
 * 上国际互联网计算机保密责任书
 * @author GGM
 *
 */
public class SecretonlineAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SecretonlineAction.class);
	private SecretonlinePageInfo pageInfo;
	private SSecretonlineTab secretonline;
	private List<SSecretonlineTab> onlineList;
	private String params;
	private String ids;
	
	private SecretonlineManager secretonlineManager = (SecretonlineManager) SpringContextHolder.getBean(SSecretonlineTab.class);
	
	/**
	 * @see 上国际互联网计算机保密责任书列表
	 * @author GGM
	 * @date May 18, 2016 09:35:11 AM
	 */
	public String secretonlineList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SecretonlinePageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			onlineList = secretonlineManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看上国际互联网计算机保密责任书
	 * @author GGM
	 * @date May 18, 2016 10:10:20 AM
	 */
	public String secretonlineInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(secretonline != null && secretonline.getId() != null){
				secretonline = (SSecretonlineTab) secretonlineManager.getObjectById(secretonline.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑上国际互联网计算机保密责任书
	 * @author GGM
	 * @date May 18, 2016 10:24:11 AM
	 */
	public String secretonlineEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(secretonline != null && secretonline.getId() != null){
				secretonline = (SSecretonlineTab) secretonlineManager.getObjectById(secretonline.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存上国际互联网计算机保密责任书
	 * @author GGM
	 * @date May 18, 2016 10:38:23 AM
	 */
	public String saveSecretonline()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(secretonline.getVersion() == null){
				secretonline.setVersion(0);
			}
			if(secretonline.getRdate()==null){
				secretonline.setRdate(date);
			}
			if(secretonline.getDdate()== null){
				secretonline.setDdate(date);
			}
			secretonline.setUserid(user.getId());
			secretonline.setUsername(user.getRealname());
			
			secretonlineManager.saveObject(secretonline);
			
			this.getRequest().setAttribute("title", "上国际互联网计算机保密责任书");
			this.getRequest().setAttribute("url", "/secretonline/secretonlineList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除上国际互联网计算机保密责任书
	 * @author GGM
	 * @date May 18, 2016 11:06:12 AM
	 */
	public String delSecretonline()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							secretonline = (SSecretonlineTab) secretonlineManager.getObjectById(Integer.parseInt(pid));
							secretonlineManager.removeObjectById(secretonline.getId());
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

	public SecretonlinePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SecretonlinePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SSecretonlineTab getSecretonline() {
		return secretonline;
	}

	public void setSecretonline(SSecretonlineTab secretonline) {
		this.secretonline = secretonline;
	}


	public List<SSecretonlineTab> getOnlineList() {
		return onlineList;
	}

	public void setOnlineList(List<SSecretonlineTab> onlineList) {
		this.onlineList = onlineList;
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
