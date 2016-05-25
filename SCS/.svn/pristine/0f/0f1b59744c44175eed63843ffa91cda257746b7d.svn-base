package com.manage.subsidiesdetain.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.subsidiesdetain.action.info.SubsidiesDetainPageInfo;
import com.manage.subsidiesdetain.model.SubsidiesDetain;
import com.manage.subsidiesdetain.service.SubsidiesDetainManager;
import com.manage.user.model.User;



/**
 * @see 保密补贴扣发通知单（保密办留存）
 * @date May 9, 2016
 * @author dl
 */
public class SubsidiesDetainAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(SubsidiesDetainAction.class);	
	private SubsidiesDetain subsidiesDetain;
	private SubsidiesDetainPageInfo pageInfo;
	private List<SubsidiesDetain> subsidiesDetainList;
	private String params;

	private String ids;
	
	private SubsidiesDetainManager subsidiesDetainManager=(SubsidiesDetainManager) SpringContextHolder.getBean(SubsidiesDetain.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String subsidiesDetainList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new SubsidiesDetainPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			subsidiesDetainList = subsidiesDetainManager.getList(sarchPageInfo);
				
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
	public String subsidiesDetainAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (subsidiesDetain != null && subsidiesDetain.getId() != null) {
				subsidiesDetain = (SubsidiesDetain) subsidiesDetainManager.getObjectById(subsidiesDetain.getId());
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
	public String subsidiesDetainDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] subsidiesDetainIds = ids.split(",");
				//判断非空
				if(subsidiesDetainIds != null && subsidiesDetainIds.length > 0){
					//遍历id
					for(String subsidiesDetainId:subsidiesDetainIds){
						if(subsidiesDetainId != null && !"".equals(subsidiesDetainId)){
							//根据id获得对象
							subsidiesDetain = (SubsidiesDetain)subsidiesDetainManager.getObjectById(Integer.parseInt(subsidiesDetainId));		
							//改变表中删除标识
							subsidiesDetainManager.removeObject(subsidiesDetain);
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
	public String subsidiesDetainSave()throws Exception{
		try {
			if (subsidiesDetain != null && subsidiesDetain.getVersion() == null ) {
				subsidiesDetain.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (subsidiesDetain != null) {
				subsidiesDetain.setUsername(user.getName());
			}
			if (subsidiesDetain != null) {
				subsidiesDetain.setUserid(user.getId());
			}
			subsidiesDetainManager.saveObject(subsidiesDetain);
			
			this.getRequest().setAttribute("title", "保密补贴扣发通知单（保密办留存）");
			this.getRequest().setAttribute("url", "/subsidiesdetain/subsidiesDetainList.action");
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
	public String subsidiesDetainInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(subsidiesDetain != null && subsidiesDetain.getId() != null){
				subsidiesDetain =  (SubsidiesDetain)subsidiesDetainManager.getObjectById(subsidiesDetain.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public SubsidiesDetain getSubsidiesDetain() {
		return subsidiesDetain;
	}


	public void setSubsidiesDetain(SubsidiesDetain subsidiesDetain) {
		this.subsidiesDetain = subsidiesDetain;
	}


	public List<SubsidiesDetain> getSubsidiesDetainList() {
		return subsidiesDetainList;
	}


	public void setSubsidiesDetainList(List<SubsidiesDetain> subsidiesDetainList) {
		this.subsidiesDetainList = subsidiesDetainList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public SubsidiesDetainPageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(SubsidiesDetainPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

