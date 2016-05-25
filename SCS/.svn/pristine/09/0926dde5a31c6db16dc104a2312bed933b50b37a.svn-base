package com.manage.devicemaintain.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.devicemaintain.action.info.DeviceMaintainPageInfo;
import com.manage.devicemaintain.model.DeviceMaintain;
import com.manage.devicemaintain.service.DeviceMaintainManager;
import com.manage.user.model.User;



/**
 * @see 设备维护、维修审批表
 * @date May 9, 2016
 * @author dl
 */
public class DeviceMaintainAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DeviceMaintainAction.class);	
	private DeviceMaintain deviceMaintain;
	private DeviceMaintainPageInfo pageInfo;
	private List<DeviceMaintain> deviceMaintainList;
	private String params;

	private String ids;
	
	
	private DeviceMaintainManager deviceMaintainManager=(DeviceMaintainManager) SpringContextHolder.getBean(DeviceMaintain.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String deviceMaintainList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new DeviceMaintainPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			deviceMaintainList = deviceMaintainManager.getList(sarchPageInfo);
				
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 编辑新增
	 */
	public String deviceMaintainAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (deviceMaintain != null && deviceMaintain.getId() != null) {
				deviceMaintain = (DeviceMaintain) deviceMaintainManager.getObjectById(deviceMaintain.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date 
	 * @param 
	 * @return
	 * @see 删除
	 */
	public String deviceMaintainDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] deviceMaintainIds = ids.split(",");
				//判断非空
				if(deviceMaintainIds != null && deviceMaintainIds.length > 0){
					//遍历id
					for(String deviceMaintainId:deviceMaintainIds){
						if(deviceMaintainId != null && !"".equals(deviceMaintainId)){
							//根据id获得对象
							deviceMaintain = (DeviceMaintain)deviceMaintainManager.getObjectById(Integer.parseInt(deviceMaintainId));		
							//改变表中删除标识
							deviceMaintainManager.removeObject(deviceMaintain);
						}	
						
					}
				}
			}		
		} catch (Exception e) {
			logger.error("发生错误：", e);
		}
		
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 保存
	 */
	public String deviceMaintainSave()throws Exception{
		try {
			if (deviceMaintain != null && deviceMaintain.getVersion() == null ) {
				deviceMaintain.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (deviceMaintain != null) {
				deviceMaintain.setFirstperson(user.getName());
			}
			if (deviceMaintain != null) {
				deviceMaintain.setFirstpid(user.getId());
			}
			if (deviceMaintain != null) {
				deviceMaintain.setFirstsubdate(new Date());
			}
			
			
			deviceMaintainManager.saveObject(deviceMaintain);
			
			this.getRequest().setAttribute("title", "设备维护、维修审批");
			this.getRequest().setAttribute("url", "/devicemaintain/deviceMaintainList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 详情
	 */
	public String deviceMaintainInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(deviceMaintain != null && deviceMaintain.getId() != null){
				deviceMaintain =  (DeviceMaintain)deviceMaintainManager.getObjectById(deviceMaintain.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public DeviceMaintain getDeviceMaintain() {
		return deviceMaintain;
	}

	public void setDeviceMaintain(DeviceMaintain deviceMaintain) {
		this.deviceMaintain = deviceMaintain;
	}

	public DeviceMaintainPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(DeviceMaintainPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<DeviceMaintain> getDeviceMaintainList() {
		return deviceMaintainList;
	}

	public void setDeviceMaintainList(List<DeviceMaintain> deviceMaintainList) {
		this.deviceMaintainList = deviceMaintainList;
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

