package com.manage.telltalerecord.action;

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
import com.manage.telltalerecord.action.info.TelltaleRecordPageInfo;
import com.manage.telltalerecord.model.TelltaleRecord;
import com.manage.telltalerecord.service.TelltaleRecordManager;
import com.manage.user.model.User;



/**
 * @see 系统失泄密记录表
 * @date 
 * @author dl
 */
public class TelltaleRecordAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(TelltaleRecordAction.class);	
	private TelltaleRecord telltaleRecord;
	private TelltaleRecordPageInfo pageInfo;
	private List<TelltaleRecord> telltaleRecordList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	
	private TelltaleRecordManager telltaleRecordManager=(TelltaleRecordManager) SpringContextHolder.getBean(TelltaleRecord.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String telltaleRecordList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new TelltaleRecordPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and happendate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and happendate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and happendate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and happendate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			telltaleRecordList = telltaleRecordManager.getList(sarchPageInfo);
				
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
	public String telltaleRecordAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (telltaleRecord != null && telltaleRecord.getId() != null) {
				telltaleRecord = (TelltaleRecord) telltaleRecordManager.getObjectById(telltaleRecord.getId());
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
	public String telltaleRecordDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] telltaleRecordIds = ids.split(",");
				//判断非空
				if(telltaleRecordIds != null && telltaleRecordIds.length > 0){
					//遍历id
					for(String telltaleRecordId:telltaleRecordIds){
						if(telltaleRecordId != null && !"".equals(telltaleRecordId)){
							//根据id获得对象
							telltaleRecord = (TelltaleRecord)telltaleRecordManager.getObjectById(Integer.parseInt(telltaleRecordId));		
							//改变表中删除标识
							telltaleRecordManager.removeObject(telltaleRecord);
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
	public String telltaleRecordSave()throws Exception{
		try {
			if (telltaleRecord != null && telltaleRecord.getVersion() == null ) {
				telltaleRecord.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (telltaleRecord != null) {
				telltaleRecord.setFirstperson(user.getName());
			}
			if (telltaleRecord != null) {
				telltaleRecord.setFirstpid(user.getId());
			}
			if (telltaleRecord != null) {
				telltaleRecord.setFirstsubdate(new Date());
			}
			
			telltaleRecordManager.saveObject(telltaleRecord);
			
			this.getRequest().setAttribute("title", "系统失泄密记录");
			this.getRequest().setAttribute("url", "/telltalerecord/telltaleRecordList.action");
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
	public String telltaleRecordInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(telltaleRecord != null && telltaleRecord.getId() != null){
				telltaleRecord =  (TelltaleRecord)telltaleRecordManager.getObjectById(telltaleRecord.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public TelltaleRecord getTelltaleRecord() {
		return telltaleRecord;
	}

	public void setTelltaleRecord(TelltaleRecord telltaleRecord) {
		this.telltaleRecord = telltaleRecord;
	}

	public TelltaleRecordPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(TelltaleRecordPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<TelltaleRecord> getTelltaleRecordList() {
		return telltaleRecordList;
	}

	public void setTelltaleRecordList(List<TelltaleRecord> telltaleRecordList) {
		this.telltaleRecordList = telltaleRecordList;
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

