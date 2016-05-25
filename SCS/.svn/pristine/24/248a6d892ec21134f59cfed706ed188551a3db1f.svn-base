package com.manage.wiresysrecord.action;

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
import com.manage.user.model.User;
import com.manage.wiresysrecord.action.info.WireSysRecordPageInfo;
import com.manage.wiresysrecord.model.WireSysRecord;
import com.manage.wiresysrecord.service.WireSysRecordManager;



/**
 * @see 布线系统季度检查记录表
 * @date May 9, 2016
 * @author dl
 */
public class WireSysRecordAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(WireSysRecordAction.class);	
	private WireSysRecord wireSysRecord;
	private WireSysRecordPageInfo pageInfo;
	private List<WireSysRecord> wireSysRecordList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private WireSysRecordManager wireSysRecordManager=(WireSysRecordManager) SpringContextHolder.getBean(WireSysRecord.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String wireSysRecordList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new WireSysRecordPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and checkdate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and checkdate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and checkdate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and checkdate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			wireSysRecordList = wireSysRecordManager.getList(sarchPageInfo);
				
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
	public String wireSysRecordAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (wireSysRecord != null && wireSysRecord.getId() != null) {
				wireSysRecord = (WireSysRecord) wireSysRecordManager.getObjectById(wireSysRecord.getId());
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
	public String wireSysRecordDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] wireSysRecordIds = ids.split(",");
				//判断非空
				if(wireSysRecordIds != null && wireSysRecordIds.length > 0){
					//遍历id
					for(String wireSysRecordId:wireSysRecordIds){
						if(wireSysRecordId != null && !"".equals(wireSysRecordId)){
							//根据id获得对象
							wireSysRecord = (WireSysRecord)wireSysRecordManager.getObjectById(Integer.parseInt(wireSysRecordId));		
							//改变表中删除标识
							wireSysRecordManager.removeObject(wireSysRecord);
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
	public String wireSysRecordSave()throws Exception{
		try {
			if (wireSysRecord != null && wireSysRecord.getVersion() == null ) {
				wireSysRecord.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (wireSysRecord != null) {
				wireSysRecord.setFirstperson(user.getName());
			}
			if (wireSysRecord != null) {
				wireSysRecord.setFirstpid(user.getId());
			}
			if (wireSysRecord != null) {
				wireSysRecord.setFirstsubdate(new Date());
			}
			wireSysRecordManager.saveObject(wireSysRecord);
			
			this.getRequest().setAttribute("title", "布线系统季度检查记录");
			this.getRequest().setAttribute("url", "/wiresysrecord/wireSysRecordList.action");
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
	public String wireSysRecordInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(wireSysRecord != null && wireSysRecord.getId() != null){
				wireSysRecord =  (WireSysRecord)wireSysRecordManager.getObjectById(wireSysRecord.getId());
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

	public WireSysRecord getWireSysRecord() {
		return wireSysRecord;
	}

	public void setWireSysRecord(WireSysRecord wireSysRecord) {
		this.wireSysRecord = wireSysRecord;
	}

	public WireSysRecordPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(WireSysRecordPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<WireSysRecord> getWireSysRecordList() {
		return wireSysRecordList;
	}

	public void setWireSysRecordList(List<WireSysRecord> wireSysRecordList) {
		this.wireSysRecordList = wireSysRecordList;
	}
	
	
}

