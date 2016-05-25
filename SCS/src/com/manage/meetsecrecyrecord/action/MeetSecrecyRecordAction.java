package com.manage.meetsecrecyrecord.action;

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
import com.manage.meetsecrecyrecord.action.info.MeetSecrecyRecordPageInfo;
import com.manage.meetsecrecyrecord.model.MeetSecrecyRecord;
import com.manage.meetsecrecyrecord.service.MeetSecrecyRecordManager;
import com.manage.user.model.User;



/**
 * @see 涉密会议保密方案执行情况记录表
 * @date May 9, 2016
 * @author dl
 */
public class MeetSecrecyRecordAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(MeetSecrecyRecordAction.class);	
	private MeetSecrecyRecord meetSecrecyRecord;
	private MeetSecrecyRecordPageInfo pageInfo;
	private List<MeetSecrecyRecord> meetSecrecyRecordList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private MeetSecrecyRecordManager meetSecrecyRecordManager=(MeetSecrecyRecordManager) SpringContextHolder.getBean(MeetSecrecyRecord.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String meetSecrecyRecordList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new MeetSecrecyRecordPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetdate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and meetdate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and meetdate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetdate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			meetSecrecyRecordList = meetSecrecyRecordManager.getList(sarchPageInfo);
				
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
	public String meetSecrecyRecordAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (meetSecrecyRecord != null && meetSecrecyRecord.getId() != null) {
				meetSecrecyRecord = (MeetSecrecyRecord) meetSecrecyRecordManager.getObjectById(meetSecrecyRecord.getId());
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
	public String meetSecrecyRecordDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] meetSecrecyRecordIds = ids.split(",");
				//判断非空
				if(meetSecrecyRecordIds != null && meetSecrecyRecordIds.length > 0){
					//遍历id
					for(String meetSecrecyRecordId:meetSecrecyRecordIds){
						if(meetSecrecyRecordId != null && !"".equals(meetSecrecyRecordId)){
							//根据id获得对象
							meetSecrecyRecord = (MeetSecrecyRecord)meetSecrecyRecordManager.getObjectById(Integer.parseInt(meetSecrecyRecordId));		
							//改变表中删除标识
							meetSecrecyRecordManager.removeObject(meetSecrecyRecord);
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
	public String meetSecrecyRecordSave()throws Exception{
		try {
			if (meetSecrecyRecord != null && meetSecrecyRecord.getVersion() == null ) {
				meetSecrecyRecord.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (meetSecrecyRecord != null) {
				meetSecrecyRecord.setUsername(user.getName());
			}
			if (meetSecrecyRecord != null) {
				meetSecrecyRecord.setUserid(user.getId());
			}
			meetSecrecyRecordManager.saveObject(meetSecrecyRecord);
			
			this.getRequest().setAttribute("title", "涉密会议保密方案执行情况记录");
			this.getRequest().setAttribute("url", "/meetsecrecyrecord/meetSecrecyRecordList.action");
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
	public String meetSecrecyRecordInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(meetSecrecyRecord != null && meetSecrecyRecord.getId() != null){
				meetSecrecyRecord =  (MeetSecrecyRecord)meetSecrecyRecordManager.getObjectById(meetSecrecyRecord.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public MeetSecrecyRecord getMeetSecrecyRecord() {
		return meetSecrecyRecord;
	}


	public void setMeetSecrecyRecord(MeetSecrecyRecord meetSecrecyRecord) {
		this.meetSecrecyRecord = meetSecrecyRecord;
	}


	public List<MeetSecrecyRecord> getMeetSecrecyRecordList() {
		return meetSecrecyRecordList;
	}


	public void setMeetSecrecyRecordList(List<MeetSecrecyRecord> meetSecrecyRecordList) {
		this.meetSecrecyRecordList = meetSecrecyRecordList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public MeetSecrecyRecordPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(MeetSecrecyRecordPageInfo pageInfo) {
		this.pageInfo = pageInfo;
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

