package com.manage.oasysalter.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.oasysalter.action.info.OaSysAlterPageInfo;
import com.manage.oasysalter.model.OaSysAlter;
import com.manage.oasysalter.service.OaSysAlterManager;
import com.manage.user.model.User;



/**
 * @see OA系统组织结构变更单
 * @date 
 * @author dl
 */
public class OaSysAlterAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(OaSysAlterAction.class);	
	private OaSysAlter oaSysAlter;
	private OaSysAlterPageInfo pageInfo;
	private List<OaSysAlter> oaSysAlterList;
	private String params;

	private String ids;
	
	
	private OaSysAlterManager oaSysAlterManager=(OaSysAlterManager) SpringContextHolder.getBean(OaSysAlter.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String oaSysAlterList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new OaSysAlterPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			oaSysAlterList = oaSysAlterManager.getList(sarchPageInfo);
				
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
	public String oaSysAlterAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (oaSysAlter != null && oaSysAlter.getId() != null) {
				oaSysAlter = (OaSysAlter) oaSysAlterManager.getObjectById(oaSysAlter.getId());
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
	public String oaSysAlterDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] oaSysAlterIds = ids.split(",");
				//判断非空
				if(oaSysAlterIds != null && oaSysAlterIds.length > 0){
					//遍历id
					for(String oaSysAlterId:oaSysAlterIds){
						if(oaSysAlterId != null && !"".equals(oaSysAlterId)){
							//根据id获得对象
							oaSysAlter = (OaSysAlter)oaSysAlterManager.getObjectById(Integer.parseInt(oaSysAlterId));		
							//改变表中删除标识
							oaSysAlterManager.removeObject(oaSysAlter);
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
	public String oaSysAlterSave()throws Exception{
		try {
			if (oaSysAlter.getVersion() == null ) {
				oaSysAlter.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (oaSysAlter != null) {
				oaSysAlter.setFirstperson(user.getName());
			}
			if (oaSysAlter != null) {
				oaSysAlter.setFirstpid(user.getId());
			}
			if (oaSysAlter != null) {
				oaSysAlter.setFirstsubdate(new Date());
			}
			oaSysAlterManager.saveObject(oaSysAlter);
			
			this.getRequest().setAttribute("title", "OA系统组织结构变更单");
			this.getRequest().setAttribute("url", "/oasysalter/oaSysAlterList.action");
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
	public String oaSysAlterInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(oaSysAlter != null && oaSysAlter.getId() != null){
				oaSysAlter =  (OaSysAlter)oaSysAlterManager.getObjectById(oaSysAlter.getId());
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

	public OaSysAlter getOaSysAlter() {
		return oaSysAlter;
	}

	public void setOaSysAlter(OaSysAlter oaSysAlter) {
		this.oaSysAlter = oaSysAlter;
	}

	public OaSysAlterPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(OaSysAlterPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<OaSysAlter> getOaSysAlterList() {
		return oaSysAlterList;
	}

	public void setOaSysAlterList(List<OaSysAlter> oaSysAlterList) {
		this.oaSysAlterList = oaSysAlterList;
	}

	

}

