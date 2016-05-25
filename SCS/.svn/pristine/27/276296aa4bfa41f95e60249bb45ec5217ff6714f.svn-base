package com.manage.leavepromise.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.leavepromise.action.info.LeavepromisePageInfo;
import com.manage.leavepromise.model.SLeavepromiseTab;
import com.manage.leavepromise.service.LeavepromiseManager;
import com.manage.statesecrets.model.SStatesecretsTab;
import com.manage.user.model.User;

/**
 * 离岗保密承诺书
 * @author GGM
 *
 */
public class LeavepromiseAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(LeavepromiseAction.class);	
	private LeavepromisePageInfo pageInfo;
	private SLeavepromiseTab leavepromise;
	private List<SLeavepromiseTab> lpList;
	private String params;
	private String ids;
	
	private LeavepromiseManager leavepromiseManager = (LeavepromiseManager) SpringContextHolder.getBean(SLeavepromiseTab.class);
	
	/**
	 * @see 获得离岗保密承诺书列表
	 * @author GGM
	 * @date May 12, 2016 3:57:36 PM
	 */
	public String leavepromiseList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new LeavepromisePageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			lpList = leavepromiseManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看离岗保密承诺书
	 * @author GGM
	 * @date May 12, 2016 4:05:27 PM
	 */
	public String leavepromiseInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(leavepromise !=null && leavepromise.getId() != null){
				leavepromise = (SLeavepromiseTab) leavepromiseManager.getObjectById(leavepromise.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑离岗保密承诺书
	 * @author GGM
	 * @date May 12, 2016 4:19:47 PM
	 */
	public String leavepromiseEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(leavepromise !=null && leavepromise.getId() != null){
				leavepromise = (SLeavepromiseTab) leavepromiseManager.getObjectById(leavepromise.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存离岗保密承诺书
	 * @author GGM
	 * @date May 12, 2016 4:27:29 PM
	 */
	public String saveLeavepromise()throws Exception{
		
		try{
			User user = (User) getSession().getAttribute("user");
			Date date = new Date();
			
			if(leavepromise.getVersion() == null){
				leavepromise.setVersion(0);
			}
			if(leavepromise.getPdate() == null){
				leavepromise.setPdate(date);
			}
			
			leavepromise.setUsername(user.getRealname());
			leavepromise.setUserid(user.getId());
			
			leavepromiseManager.saveObject(leavepromise);
			this.getRequest().setAttribute("title", "离岗保密承诺书");
			this.getRequest().setAttribute("url", "/leavepromise/leavepromiseList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除离岗保密承诺书
	 * @author GGM
	 * @date May 12, 2016 4:33:35 PM
	 */
	public String delLeavepromise()throws Exception{
		
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] lpids = ids.split(",");
				if(lpids !=null && lpids.length>0){
					for(String lpid : lpids){
						if(lpid != null && lpid.length()>0){
							leavepromise = (SLeavepromiseTab) leavepromiseManager.getObjectById(Integer.parseInt(lpid));
							leavepromiseManager.removeObjectById(leavepromise.getId());
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

	public LeavepromisePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(LeavepromisePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SLeavepromiseTab getLeavepromise() {
		return leavepromise;
	}

	public void setLeavepromise(SLeavepromiseTab leavepromise) {
		this.leavepromise = leavepromise;
	}

	public List<SLeavepromiseTab> getLpList() {
		return lpList;
	}

	public void setLpList(List<SLeavepromiseTab> lpList) {
		this.lpList = lpList;
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
