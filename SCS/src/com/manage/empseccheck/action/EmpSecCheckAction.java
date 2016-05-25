package com.manage.empseccheck.action;

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
import com.manage.empseccheck.action.info.EmpSecCheckPageInfo;
import com.manage.empseccheck.model.EmpSecCheck;
import com.manage.empseccheck.service.EmpSecCheckManager;
import com.manage.user.model.User;



/**
 * @see 员工保密工作自查表
 * @date May 9, 2016
 * @author dl
 */
public class EmpSecCheckAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(EmpSecCheckAction.class);	
	private EmpSecCheck empSecCheck;
	private EmpSecCheckPageInfo pageInfo;
	private List<EmpSecCheck> empSecCheckList;
	private String params;

	private String ids;
	private String startDate;
	private String endDate;
	private EmpSecCheckManager empSecCheckManager=(EmpSecCheckManager) SpringContextHolder.getBean(EmpSecCheck.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String empSecCheckList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new EmpSecCheckPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and cdate >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and cdate <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and cdate >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and cdate <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			empSecCheckList = empSecCheckManager.getList(sarchPageInfo);
				
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
	public String empSecCheckAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (empSecCheck != null && empSecCheck.getId() != null) {
				empSecCheck = (EmpSecCheck) empSecCheckManager.getObjectById(empSecCheck.getId());
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
	public String empSecCheckDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] empSecCheckIds = ids.split(",");
				//判断非空
				if(empSecCheckIds != null && empSecCheckIds.length > 0){
					//遍历id
					for(String empSecCheckId:empSecCheckIds){
						if(empSecCheckId != null && !"".equals(empSecCheckId)){
							//根据id获得对象
							empSecCheck = (EmpSecCheck)empSecCheckManager.getObjectById(Integer.parseInt(empSecCheckId));		
							//改变表中删除标识
							empSecCheckManager.removeObject(empSecCheck);
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
	public String empSecCheckSave()throws Exception{
		try {
			if (empSecCheck != null && empSecCheck.getVersion() == null ) {
				empSecCheck.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (empSecCheck != null) {
				empSecCheck.setUsername(user.getName());
			}
			if (empSecCheck != null) {
				empSecCheck.setUserid(user.getId());
			}
			empSecCheckManager.saveObject(empSecCheck);
			
			this.getRequest().setAttribute("title", "员工保密工作自查");
			this.getRequest().setAttribute("url", "/empseccheck/empSecCheckList.action");
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
	public String empSecCheckInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(empSecCheck != null && empSecCheck.getId() != null){
				empSecCheck =  (EmpSecCheck)empSecCheckManager.getObjectById(empSecCheck.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public EmpSecCheck getEmpSecCheck() {
		return empSecCheck;
	}


	public void setEmpSecCheck(EmpSecCheck empSecCheck) {
		this.empSecCheck = empSecCheck;
	}


	public List<EmpSecCheck> getEmpSecCheckList() {
		return empSecCheckList;
	}


	public void setEmpSecCheckList(List<EmpSecCheck> empSecCheckList) {
		this.empSecCheckList = empSecCheckList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public EmpSecCheckPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(EmpSecCheckPageInfo pageInfo) {
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

