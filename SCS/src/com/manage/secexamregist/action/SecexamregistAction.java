package com.manage.secexamregist.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.secexamregist.action.info.SecexamregistPageInfo;
import com.manage.secexamregist.model.SSecexamregistTab;
import com.manage.secexamregist.service.SecexamregistManager;
import com.manage.user.model.User;

/**
 * 保密审查审批登记
 * @author GGM
 *
 */
public class SecexamregistAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SecexamregistAction.class);
	private SecexamregistPageInfo pageInfo;
	private SSecexamregistTab secexamregist;
	private List<SSecexamregistTab> sregistList;
	private String params;
	private String ids;
	
	private SecexamregistManager secexamregistManager = (SecexamregistManager) SpringContextHolder.getBean(SSecexamregistTab.class);
	
	/**
	 * @see 保密审查审批登记列表
	 * @author GGM
	 * @date May 22, 2016 09:12:11 AM
	 */
	public String secexamregistList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SecexamregistPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			sregistList = secexamregistManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看保密审查审批登记
	 * @author GGM
	 * @date May 22, 2016 09:24:13 AM
	 */
	public String secexamregistInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(secexamregist != null && secexamregist.getId() != null){
				secexamregist = (SSecexamregistTab) secexamregistManager.getObjectById(secexamregist.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑保密审查审批登记
	 * @author GGM
	 * @date May 22, 2016 09:32:22 AM
	 */
	public String secexamregistEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(secexamregist != null && secexamregist.getId() != null){
				secexamregist = (SSecexamregistTab) secexamregistManager.getObjectById(secexamregist.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存保密审查审批登记
	 * @author GGM
	 * @date May 22, 2016 10:12:16 AM
	 */
	public String saveSecexamregist()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(secexamregist.getVersion() == null){
				secexamregist.setVersion(0);
			}
			if(secexamregist.getDepdate()==null){
				secexamregist.setDepdate(date);
			}
			if(secexamregist.getOfficedate()== null){
				secexamregist.setOfficedate(date);
			}
			if(secexamregist.getScomdate()== null){
				secexamregist.setScomdate(date);
			}
			secexamregist.setUserid(user.getId());
			secexamregist.setUsername(user.getRealname());
			
			secexamregistManager.saveObject(secexamregist);
			
			this.getRequest().setAttribute("title", "保密审查审批登记");
			this.getRequest().setAttribute("url", "/secexamregist/secexamregistList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除保密审查审批登记
	 * @author GGM
	 * @date May 22, 2016 10:17:36 AM
	 */
	public String delSecexamregist()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							secexamregist = (SSecexamregistTab) secexamregistManager.getObjectById(Integer.parseInt(pid));
							secexamregistManager.removeObjectById(secexamregist.getId());
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

	public SecexamregistPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SecexamregistPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SSecexamregistTab getSecexamregist() {
		return secexamregist;
	}

	public void setSecexamregist(SSecexamregistTab secexamregist) {
		this.secexamregist = secexamregist;
	}

	public List<SSecexamregistTab> getSregistList() {
		return sregistList;
	}

	public void setSregistList(List<SSecexamregistTab> sregistList) {
		this.sregistList = sregistList;
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
