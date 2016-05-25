package com.manage.devicepurchase.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.deviceinfo.action.info.DeviceInfoPageInfo;
import com.manage.deviceinfo.model.DeviceInfo;
import com.manage.deviceinfo.service.DeviceInfoManager;
import com.manage.devicepurchase.action.info.DevicePurchasePageInfo;
import com.manage.devicepurchase.model.DevicePurchase;
import com.manage.devicepurchase.service.DevicePurchaseManager;
import com.manage.user.model.User;



/**
 * @see 年度设备购置需求表
 * @date May 9, 2016
 * @author dl
 */
public class DevicePurchaseAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DevicePurchaseAction.class);	
	private DevicePurchase devicePurchase;
	private DevicePurchasePageInfo pageInfo;
	private List<DevicePurchase> devicePurchaseList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	private DeviceInfo deviceInfo;
	private List<DeviceInfo> deviceInfoList;
	
	private DevicePurchaseManager devicePurchaseManager=(DevicePurchaseManager) SpringContextHolder.getBean(DevicePurchase.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String devicePurchaseList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new DevicePurchasePageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and applydate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and applydate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and applydate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and applydate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			devicePurchaseList = devicePurchaseManager.getList(sarchPageInfo);
				
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
	public String devicePurchaseAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (devicePurchase != null && devicePurchase.getId() != null) {
				devicePurchase = (DevicePurchase) devicePurchaseManager.getObjectById(devicePurchase.getId());
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
	public String devicePurchaseDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] devicePurchaseIds = ids.split(",");
				//判断非空
				if(devicePurchaseIds != null && devicePurchaseIds.length > 0){
					//遍历id
					for(String devicePurchaseId:devicePurchaseIds){
						if(devicePurchaseId != null && !"".equals(devicePurchaseId)){
							//根据id获得对象
							devicePurchase = (DevicePurchase)devicePurchaseManager.getObjectById(Integer.parseInt(devicePurchaseId));		
							//改变表中删除标识
							devicePurchaseManager.removeObject(devicePurchase);
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
	public String devicePurchaseSave()throws Exception{
		try {
			if (devicePurchase != null && devicePurchase.getVersion() == null ) {
				devicePurchase.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (devicePurchase != null) {
				devicePurchase.setFirstperson(user.getName());
			}
			if (devicePurchase != null) {
				devicePurchase.setFirstpid(user.getId());
			}
			if (devicePurchase != null) {
				devicePurchase.setFirstsubdate(new Date());
			}
			
			devicePurchaseManager.saveObject(devicePurchase);
			
			this.getRequest().setAttribute("title", "年度设备购置需求");
			this.getRequest().setAttribute("url", "/devicepurchase/devicePurchaseList.action");
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
	public String devicePurchaseInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(devicePurchase != null && devicePurchase.getId() != null){
				devicePurchase =  (DevicePurchase)devicePurchaseManager.getObjectById(devicePurchase.getId());
				getdeviceInfoList(devicePurchase.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public void getdeviceInfoList(int did) throws Exception{
		DeviceInfoManager deviceInfoManager=(DeviceInfoManager) SpringContextHolder.getBean(DeviceInfo.class);
		try{
			DeviceInfoPageInfo pageInfo = new DeviceInfoPageInfo();
			pageInfo.setF_did(did);
			pageInfo.setF_did_op(Filter.OPERATOR_EQ);
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			deviceInfoList = deviceInfoManager.getList(sarchPageInfo);
				
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
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

	public DevicePurchase getDevicePurchase() {
		return devicePurchase;
	}

	public void setDevicePurchase(DevicePurchase devicePurchase) {
		this.devicePurchase = devicePurchase;
	}

	public DevicePurchasePageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(DevicePurchasePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<DevicePurchase> getDevicePurchaseList() {
		return devicePurchaseList;
	}

	public void setDevicePurchaseList(List<DevicePurchase> devicePurchaseList) {
		this.devicePurchaseList = devicePurchaseList;
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

	public DeviceInfo getDeviceInfo() {
		return deviceInfo;
	}

	public void setDeviceInfo(DeviceInfo deviceInfo) {
		this.deviceInfo = deviceInfo;
	}

	public List<DeviceInfo> getDeviceInfoList() {
		return deviceInfoList;
	}

	public void setDeviceInfoList(List<DeviceInfo> deviceInfoList) {
		this.deviceInfoList = deviceInfoList;
	}

}

