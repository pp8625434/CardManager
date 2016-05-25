package com.manage.promise.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.promise.action.info.PromisePageInfo;
import com.manage.promise.model.Promise;
import com.manage.promise.service.PromiseManager;
import com.manage.user.model.User;



/**
 * @see 保密承诺书
 * @date May 9, 2016
 * @author dl
 */
public class PromiseAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1600859264380456685L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(PromiseAction.class);	
	private Promise promise;
	private PromisePageInfo pageInfo;
	private List<Promise> promiseList;
	private String params;

	private String ids;
	
	private PromiseManager promiseManager=(PromiseManager) SpringContextHolder.getBean(Promise.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String promiseList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new PromisePageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			promiseList = promiseManager.getList(sarchPageInfo);
				
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
	public String promiseAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (promise != null && promise.getId() != null) {
				promise = (Promise) promiseManager.getObjectById(promise.getId());
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
	public String promiseDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] promiseIds = ids.split(",");
				//判断非空
				if(promiseIds != null && promiseIds.length > 0){
					//遍历id
					for(String promiseId:promiseIds){
						if(promiseId != null && !"".equals(promiseId)){
							//根据id获得对象
							promise = (Promise)promiseManager.getObjectById(Integer.parseInt(promiseId));		
							//改变表中删除标识
							promiseManager.removeObject(promise);
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
	public String promiseSave()throws Exception{
		try {
			if (promise != null && promise.getVersion() == null ) {
				promise.setVersion(1);
			}
			User user = (User) getSession().getAttribute("user");
			
			if (promise != null) {
				promise.setUsername(user.getName());
			}
			if (promise != null) {
				promise.setUserid(user.getId());
			}
			if (promise != null) {
				promise.setPdate(new Date());
			}
			promiseManager.saveObject(promise);
			
			this.getRequest().setAttribute("title", "保密承诺书");
			this.getRequest().setAttribute("url", "/promise/promiseList.action");
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
	public String promiseInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(promise != null && promise.getId() != null){
				promise =  (Promise)promiseManager.getObjectById(promise.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	

	public Promise getPromise() {
		return promise;
	}


	public void setPromise(Promise promise) {
		this.promise = promise;
	}


	public List<Promise> getPromiseList() {
		return promiseList;
	}


	public void setPromiseList(List<Promise> promiseList) {
		this.promiseList = promiseList;
	}


	public String getParams() {
		return params;
	}


	public void setParams(String params) {
		this.params = params;
	}


	public PromisePageInfo getPageInfo() {
		return pageInfo;
	}


	public void setPageInfo(PromisePageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}

	
}

