package com.manage.deviceiosys.action;


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
import com.manage.deviceiosys.action.info.DeviceIoSysPageInfo;
import com.manage.deviceiosys.model.DeviceIoSys;
import com.manage.deviceiosys.service.DeviceIoSysManager;
import com.manage.user.model.User;



/**
 * @see 设备接入/退出涉密信息系统审批表
 * @date May 9, 2016
 * @author dl
 */
public class DeviceIoSysAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(DeviceIoSysAction.class);	
	private DeviceIoSys deviceIoSys;
	private DeviceIoSysPageInfo pageInfo;
	private List<DeviceIoSys> deviceIoSysList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	
	private DeviceIoSysManager deviceIoSysManager=(DeviceIoSysManager) SpringContextHolder.getBean(DeviceIoSys.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String deviceIoSysList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new DeviceIoSysPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and appliydate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and appliydate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and appliydate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and appliydate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			deviceIoSysList = deviceIoSysManager.getList(sarchPageInfo);
				
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
	public String deviceIoSysAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (deviceIoSys != null && deviceIoSys.getId() != null) {
				deviceIoSys = (DeviceIoSys) deviceIoSysManager.getObjectById(deviceIoSys.getId());
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
	public String deviceIoSysDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] deviceIoSysIds = ids.split(",");
				//判断非空
				if(deviceIoSysIds != null && deviceIoSysIds.length > 0){
					//遍历id
					for(String deviceIoSysId:deviceIoSysIds){
						if(deviceIoSysId != null && !"".equals(deviceIoSysId)){
							//根据id获得对象
							deviceIoSys = (DeviceIoSys)deviceIoSysManager.getObjectById(Integer.parseInt(deviceIoSysId));		
							//改变表中删除标识
							deviceIoSysManager.removeObject(deviceIoSys);
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
	public String deviceIoSysSave()throws Exception{
		try {
			if (deviceIoSys != null && deviceIoSys.getVersion() == null ) {
				deviceIoSys.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (deviceIoSys != null) {
				deviceIoSys.setFirstperson(user.getName());
			}
			if (deviceIoSys != null) {
				deviceIoSys.setFirstpid(user.getId());
			}
			if (deviceIoSys != null) {
				deviceIoSys.setFirstsubdate(new Date());
			}
			
			
			deviceIoSysManager.saveObject(deviceIoSys);
			
			this.getRequest().setAttribute("title", "设备接入/退出涉密信息系统审批");
			this.getRequest().setAttribute("url", "/deviceiosys/deviceIoSysList.action");
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
	public String deviceIoSysInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(deviceIoSys != null && deviceIoSys.getId() != null){
				deviceIoSys =  (DeviceIoSys)deviceIoSysManager.getObjectById(deviceIoSys.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public DeviceIoSys getDeviceIoSys() {
		return deviceIoSys;
	}

	public void setDeviceIoSys(DeviceIoSys deviceIoSys) {
		this.deviceIoSys = deviceIoSys;
	}

	public DeviceIoSysPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(DeviceIoSysPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<DeviceIoSys> getDeviceIoSysList() {
		return deviceIoSysList;
	}

	public void setDeviceIoSysList(List<DeviceIoSys> deviceIoSysList) {
		this.deviceIoSysList = deviceIoSysList;
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

