package com.manage.deviceinfo.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.deviceinfo.action.info.DeviceInfoPageInfo;
import com.manage.deviceinfo.model.DeviceInfo;
import com.manage.deviceinfo.service.DeviceInfoManager;
import com.manage.user.model.User;



/**
 * @see 设备购置明细表
 * @date May 9, 2016
 * @author dl
 */
public class DeviceInfoAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DeviceInfoAction.class);	
	private DeviceInfo deviceInfo;
	private DeviceInfoPageInfo pageInfo;
	private List<DeviceInfo> deviceInfoList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private DeviceInfoManager deviceInfoManager=(DeviceInfoManager) SpringContextHolder.getBean(DeviceInfo.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String deviceInfoList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new DeviceInfoPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			deviceInfoList = deviceInfoManager.getList(sarchPageInfo);
				
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
	public String deviceInfoAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (deviceInfo != null && deviceInfo.getId() != null) {
				deviceInfo = (DeviceInfo) deviceInfoManager.getObjectById(deviceInfo.getId());
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
	public String deviceInfoDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] deviceInfoIds = ids.split(",");
				//判断非空
				if(deviceInfoIds != null && deviceInfoIds.length > 0){
					//遍历id
					for(String deviceInfoId:deviceInfoIds){
						if(deviceInfoId != null && !"".equals(deviceInfoId)){
							//根据id获得对象
							deviceInfo = (DeviceInfo)deviceInfoManager.getObjectById(Integer.parseInt(deviceInfoId));		
							//改变表中删除标识
							deviceInfoManager.removeObject(deviceInfo);
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
	public String deviceInfoSave()throws Exception{
		try {
			if (deviceInfo != null && deviceInfo.getVersion() == null ) {
				deviceInfo.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (deviceInfo != null) {
				deviceInfo.setFirstperson(user.getName());
			}
			if (deviceInfo != null) {
				deviceInfo.setFirstpid(user.getId());
			}
			if (deviceInfo != null) {
				deviceInfo.setFirstsubdate(new Date());
			}
			deviceInfoManager.saveObject(deviceInfo);
			
			this.getRequest().setAttribute("title", "设备购置明细");
			this.getRequest().setAttribute("url", "/deviceinfo/deviceInfoList.action");
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
	public String deviceInfoInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(deviceInfo != null && deviceInfo.getId() != null){
				deviceInfo =  (DeviceInfo)deviceInfoManager.getObjectById(deviceInfo.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	
	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public DeviceInfo getDeviceInfo() {
		return deviceInfo;
	}

	public void setDeviceInfo(DeviceInfo deviceInfo) {
		this.deviceInfo = deviceInfo;
	}

	public DeviceInfoPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(DeviceInfoPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<DeviceInfo> getDeviceInfoList() {
		return deviceInfoList;
	}

	public void setDeviceInfoList(List<DeviceInfo> deviceInfoList) {
		this.deviceInfoList = deviceInfoList;
	}

	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	
}

