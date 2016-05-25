package com.manage.subsidiesdetainper.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.subsidiesdetainper.action.info.SubsidiesDetainperPageInfo;
import com.manage.subsidiesdetainper.model.SubsidiesDetainper;
import com.manage.subsidiesdetainper.service.SubsidiesDetainperManager;
import com.manage.user.model.User;



/**
 * @see 保密补贴扣发通知单
 * @date May 9, 2016
 * @author dl
 */
public class SubsidiesDetainperAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SubsidiesDetainperAction.class);	
	private SubsidiesDetainper subsidiesDetainper;
	private SubsidiesDetainperPageInfo pageInfo;
	private List<SubsidiesDetainper> subsidiesDetainperList;
	private String params;

	private String ids;
	
	private SubsidiesDetainperManager subsidiesDetainperManager=(SubsidiesDetainperManager) SpringContextHolder.getBean(SubsidiesDetainper.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String subsidiesDetainperList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SubsidiesDetainperPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			subsidiesDetainperList = subsidiesDetainperManager.getList(sarchPageInfo);
				
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
	public String subsidiesDetainperAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (subsidiesDetainper != null && subsidiesDetainper.getId() != null) {
				subsidiesDetainper = (SubsidiesDetainper) subsidiesDetainperManager.getObjectById(subsidiesDetainper.getId());
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
	public String subsidiesDetainperDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] subsidiesDetainperIds = ids.split(",");
				//判断非空
				if(subsidiesDetainperIds != null && subsidiesDetainperIds.length > 0){
					//遍历id
					for(String subsidiesDetainperId:subsidiesDetainperIds){
						if(subsidiesDetainperId != null && !"".equals(subsidiesDetainperId)){
							//根据id获得对象
							subsidiesDetainper = (SubsidiesDetainper)subsidiesDetainperManager.getObjectById(Integer.parseInt(subsidiesDetainperId));		
							//改变表中删除标识
							subsidiesDetainperManager.removeObject(subsidiesDetainper);
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
	public String subsidiesDetainperSave()throws Exception{
		try {
			if (subsidiesDetainper != null && subsidiesDetainper.getVersion() == null ) {
				subsidiesDetainper.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (subsidiesDetainper != null) {
				subsidiesDetainper.setUsername(user.getName());
			}
			if (subsidiesDetainper != null) {
				subsidiesDetainper.setUserid(user.getId());
			}
			subsidiesDetainperManager.saveObject(subsidiesDetainper);
			
			this.getRequest().setAttribute("title", "保密补贴扣发通知");
			this.getRequest().setAttribute("url", "/subsidiesdetainper/subsidiesDetainperList.action");
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
	public String subsidiesDetainperInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(subsidiesDetainper != null && subsidiesDetainper.getId() != null){
				subsidiesDetainper =  (SubsidiesDetainper)subsidiesDetainperManager.getObjectById(subsidiesDetainper.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public SubsidiesDetainper getSubsidiesDetainper() {
		return subsidiesDetainper;
	}


	public void setSubsidiesDetainper(SubsidiesDetainper subsidiesDetainper) {
		this.subsidiesDetainper = subsidiesDetainper;
	}


	public List<SubsidiesDetainper> getSubsidiesDetainperList() {
		return subsidiesDetainperList;
	}


	public void setSubsidiesDetainperList(List<SubsidiesDetainper> subsidiesDetainperList) {
		this.subsidiesDetainperList = subsidiesDetainperList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public SubsidiesDetainperPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(SubsidiesDetainperPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

