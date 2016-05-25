package com.manage.carrypartmedium.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.carrypartmedium.action.info.CarrypartmediumPageInfo;
import com.manage.carrypartmedium.model.SCarrypartmediumTab;
import com.manage.carrypartmedium.service.CarrypartmediumManager;
import com.manage.user.model.User;

/**
 * 本部存储介质携带外出审批
 * @author GGM
 *
 */
public class CarrypartmediumAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CarrypartmediumAction.class);
	private CarrypartmediumPageInfo pageInfo;
	private SCarrypartmediumTab carrypartmedium;
	private List<SCarrypartmediumTab> carryList;
	private String params;
	private String ids;
	
	private CarrypartmediumManager carrypartmediumManager = (CarrypartmediumManager) SpringContextHolder.getBean(SCarrypartmediumTab.class);
	
	/**
	 * @see 本部存储介质携带外出审批列表
	 * @author GGM
	 * @date May 17, 2016 02:36:11 PM
	 */
	public String carrypartmediumList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new CarrypartmediumPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			carryList = carrypartmediumManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看本部存储介质携带外出审批
	 * @author GGM
	 * @date May 17, 2016 02:45:20 PM
	 */
	public String carrypartmediumInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(carrypartmedium != null && carrypartmedium.getId() != null){
				carrypartmedium = (SCarrypartmediumTab) carrypartmediumManager.getObjectById(carrypartmedium.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑本部存储介质携带外出审批
	 * @author GGM
	 * @date May 17, 2016 03:02:11 PM
	 */
	public String carrypartmediumEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(carrypartmedium != null && carrypartmedium.getId() != null){
				carrypartmedium = (SCarrypartmediumTab) carrypartmediumManager.getObjectById(carrypartmedium.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存本部存储介质携带外出审批
	 * @author GGM
	 * @date May 17, 2016 03:13:23 PM
	 */
	public String saveCarrypartmedium()throws Exception{
		
		try{
			User user  = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(carrypartmedium.getVersion() == null){
				carrypartmedium.setVersion(0);
			}
			if(carrypartmedium.getDepartmentdate()==null){
				carrypartmedium.setDepartmentdate(date);
			}
			if(carrypartmedium.getUdate()== null){
				carrypartmedium.setUdate(date);
			}
			if(carrypartmedium.getRecheckdate() == null){
				carrypartmedium.setRecheckdate(date);
			}
			carrypartmedium.setUserid(user.getId());
			carrypartmedium.setUsername(user.getRealname());
			
			carrypartmediumManager.saveObject(carrypartmedium);
			
			this.getRequest().setAttribute("title", "本部存储介质携带外出审批");
			this.getRequest().setAttribute("url", "/carrypartmedium/carrypartmediumList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除本部存储介质携带外出审批
	 * @author GGM
	 * @date May 17, 2016 03:26:12 PM
	 */
	public String delCarrypartmedium()throws Exception{
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] pidStrings = ids.split(",");
				if(pidStrings != null && pidStrings.length>0){
					for(String pid : pidStrings){
						if(pid != null && !"".equals(pid)){
							carrypartmedium = (SCarrypartmediumTab) carrypartmediumManager.getObjectById(Integer.parseInt(pid));
							carrypartmediumManager.removeObjectById(carrypartmedium.getId());
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

	public CarrypartmediumPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CarrypartmediumPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SCarrypartmediumTab getCarrypartmedium() {
		return carrypartmedium;
	}

	public void setCarrypartmedium(SCarrypartmediumTab carrypartmedium) {
		this.carrypartmedium = carrypartmedium;
	}

	public List<SCarrypartmediumTab> getCarryList() {
		return carryList;
	}

	public void setCarryList(List<SCarrypartmediumTab> carryList) {
		this.carryList = carryList;
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
