package com.manage.conagreement.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.conagreement.action.info.ConagreementPageInfo;
import com.manage.conagreement.model.SConagreementTab;
import com.manage.conagreement.service.ConagreementManager;
import com.manage.user.model.User;

/**
 * 保密协议书
 * @author GGM
 *
 */
public class ConagreementAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ConagreementAction.class);
	private ConagreementPageInfo pageInfo;
	private SConagreementTab conagreement;
	private List<SConagreementTab> conList;
	private String params;
	private String ids;
	
	private ConagreementManager conagreementManager = (ConagreementManager) SpringContextHolder.getBean(SConagreementTab.class);
	
	/**
	 * @see 保密协议书列表
	 * @author GGM
	 * @date May 22, 2016 10:45:11 AM
	 */
	public String conagreementList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ConagreementPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			conList = conagreementManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看保密协议书
	 * @author GGM
	 * @date May 22, 2016 10:50:13 AM
	 */
	public String conagreementInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(conagreement != null && conagreement.getId() != null){
				conagreement = (SConagreementTab) conagreementManager.getObjectById(conagreement.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑保密协议书
	 * @author GGM
	 * @date May 22, 2016 11:03:22 AM
	 */
	public String conagreementEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(conagreement != null && conagreement.getId() != null){
				conagreement = (SConagreementTab) conagreementManager.getObjectById(conagreement.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存保密协议书
	 * @author GGM
	 * @date May 22, 2016 11:13:16 AM
	 */
	public String saveConagreement()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(conagreement.getVersion() == null){
				conagreement.setVersion(0);
			}
			if(conagreement.getJfdate()==null){
				conagreement.setJfdate(date);
			}
			if(conagreement.getYfdate()== null){
				conagreement.setYfdate(date);
			}
			conagreement.setUserid(user.getId());
			conagreement.setUsername(user.getRealname());
			
			conagreementManager.saveObject(conagreement);
			
			this.getRequest().setAttribute("title", "保密协议书");
			this.getRequest().setAttribute("url", "/conagreement/conagreementList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除保密协议书
	 * @author GGM
	 * @date May 22, 2016 11:23:36 AM
	 */
	public String delConagreement()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							conagreement = (SConagreementTab) conagreementManager.getObjectById(Integer.parseInt(pid));
							conagreementManager.removeObjectById(conagreement.getId());
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

	public ConagreementPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ConagreementPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SConagreementTab getConagreement() {
		return conagreement;
	}

	public void setConagreement(SConagreementTab conagreement) {
		this.conagreement = conagreement;
	}

	public List<SConagreementTab> getConList() {
		return conList;
	}

	public void setConList(List<SConagreementTab> conList) {
		this.conList = conList;
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
