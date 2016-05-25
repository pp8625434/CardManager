package com.manage.borrowmedium.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.borrowmedium.action.info.BorrowmediumPageInfo;
import com.manage.borrowmedium.model.SBorrowmediumTab;
import com.manage.borrowmedium.service.BorrowmediumManager;
import com.manage.user.model.User;

/**
 * 部门存储介质借用登记
 * @author GGM
 *
 */
/**
 * @author HZ
 *
 */
public class BorrowmediumAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(BorrowmediumAction.class);
	private BorrowmediumPageInfo pageInfo;
	private SBorrowmediumTab borrowmedium;
	private List<SBorrowmediumTab> borrowList;
	private String params;
	private String ids;
	
	private BorrowmediumManager borrowmediumManager = (BorrowmediumManager) SpringContextHolder.getBean(SBorrowmediumTab.class);
	
	/**
	 * @see 部门存储介质借用登记列表
	 * @author GGM
	 * @date May 17, 2016 09:20:10 AM
	 */
	public String borrowmediumList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new BorrowmediumPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			borrowList = borrowmediumManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看部门存储介质借用登记
	 * @author GGM
	 * @date May 17, 2016 10:08:15 AM
	 */
	public String borrowmediumInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(borrowmedium != null && borrowmedium.getId() != null){
				borrowmedium = (SBorrowmediumTab) borrowmediumManager.getObjectById(borrowmedium.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑部门存储介质借用登记
	 * @author GGM
	 * @date May 17, 2016 10:27:11 AM
	 */
	public String borrowmediumEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(borrowmedium != null && borrowmedium.getId() != null){
				borrowmedium = (SBorrowmediumTab) borrowmediumManager.getObjectById(borrowmedium.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存部门存储介质借用登记
	 * @author GGM
	 * @date May 17, 2016 10:40:23 AM
	 */
	public String saveBorrowmedium()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(borrowmedium.getVersion() == null){
				borrowmedium.setVersion(0);
			}
			borrowmedium.setUserid(user.getId());
			borrowmedium.setUsername(user.getRealname());
			
			borrowmediumManager.saveObject(borrowmedium);
			
			this.getRequest().setAttribute("title", "部门存储介质借用登记");
			this.getRequest().setAttribute("url", "/borrowmedium/borrowmediumList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除部门存储介质借用登记
	 * @author GGM
	 * @date May 17, 2016 11:10:12 AM
	 */
	public String delBorrowmedium()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							borrowmedium = (SBorrowmediumTab) borrowmediumManager.getObjectById(Integer.parseInt(pid));
							borrowmediumManager.removeObjectById(borrowmedium.getId());
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

	public BorrowmediumPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(BorrowmediumPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SBorrowmediumTab getBorrowmedium() {
		return borrowmedium;
	}

	public void setBorrowmedium(SBorrowmediumTab borrowmedium) {
		this.borrowmedium = borrowmedium;
	}

	public List<SBorrowmediumTab> getBorrowList() {
		return borrowList;
	}

	public void setBorrowList(List<SBorrowmediumTab> borrowList) {
		this.borrowList = borrowList;
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
