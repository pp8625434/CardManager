package com.manage.pantchrecord.action;

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
import com.manage.pantchrecord.action.info.PantchRecordPageInfo;
import com.manage.pantchrecord.model.PantchRecord;
import com.manage.pantchrecord.service.PantchRecordManager;
import com.manage.user.model.User;



/**
 * @see 配线间周检查记录表
 * @date May 9, 2016
 * @author dl
 */
public class PantchRecordAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(PantchRecordAction.class);	
	private PantchRecord pantchRecord;
	private PantchRecordPageInfo pageInfo;
	private List<PantchRecord> pantchRecordList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	
	private PantchRecordManager pantchRecordManager=(PantchRecordManager) SpringContextHolder.getBean(PantchRecord.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String pantchRecordList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new PantchRecordPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetingtime >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and meetingtime <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and meetingtime >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and meetingtime <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			pantchRecordList = pantchRecordManager.getList(sarchPageInfo);
				
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
	public String pantchRecordAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (pantchRecord != null && pantchRecord.getId() != null) {
				pantchRecord = (PantchRecord) pantchRecordManager.getObjectById(pantchRecord.getId());
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
	public String pantchRecordDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] pantchRecordIds = ids.split(",");
				//判断非空
				if(pantchRecordIds != null && pantchRecordIds.length > 0){
					//遍历id
					for(String pantchRecordId:pantchRecordIds){
						if(pantchRecordId != null && !"".equals(pantchRecordId)){
							//根据id获得对象
							pantchRecord = (PantchRecord)pantchRecordManager.getObjectById(Integer.parseInt(pantchRecordId));		
							//改变表中删除标识
							pantchRecordManager.removeObject(pantchRecord);
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
	public String pantchRecordSave()throws Exception{
		try {
			if (pantchRecord != null && pantchRecord.getVersion() == null ) {
				pantchRecord.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (pantchRecord != null) {
				pantchRecord.setFirstperson(user.getName());
			}
			if (pantchRecord != null) {
				pantchRecord.setFirstpid(user.getId());
			}
			if (pantchRecord != null) {
				pantchRecord.setFirstsubdate(new Date());
			}
			pantchRecordManager.saveObject(pantchRecord);
			
			this.getRequest().setAttribute("title", "配线间周检查记录");
			this.getRequest().setAttribute("url", "/pantchrecord/pantchRecordList.action");
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
	public String pantchRecordInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(pantchRecord != null && pantchRecord.getId() != null){
				pantchRecord =  (PantchRecord)pantchRecordManager.getObjectById(pantchRecord.getId());
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


	public PantchRecord getPantchRecord() {
		return pantchRecord;
	}

	public void setPantchRecord(PantchRecord pantchRecord) {
		this.pantchRecord = pantchRecord;
	}

	public PantchRecordPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PantchRecordPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<PantchRecord> getPantchRecordList() {
		return pantchRecordList;
	}

	public void setPantchRecordList(List<PantchRecord> pantchRecordList) {
		this.pantchRecordList = pantchRecordList;
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

