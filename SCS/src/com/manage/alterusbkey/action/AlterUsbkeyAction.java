package com.manage.alterusbkey.action;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.alterusbkey.action.info.AlterUsbkeyPageInfo;
import com.manage.alterusbkey.model.AlterUsbkey;
import com.manage.alterusbkey.service.AlterUsbkeyManager;
import com.manage.user.model.User;



/**
 * @see 更换USBKEY申请表
 * @date 
 * @author dl
 */
public class AlterUsbkeyAction extends BaseAction {
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(AlterUsbkeyAction.class);	
	private AlterUsbkey alterUsbkey;
	private AlterUsbkeyPageInfo pageInfo;
	private List<AlterUsbkey> alterUsbkeyList;
	private String params;

	private String ids;
	
	
	private AlterUsbkeyManager alterUsbkeyManager=(AlterUsbkeyManager) SpringContextHolder.getBean(AlterUsbkey.class);
	/**
	 * @author DL
	 * @date
	 * @param 
	 * @return
	 * @see 列表
	 */
	public String alterUsbkeyList() throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new AlterUsbkeyPageInfo() : pageInfo;
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			
			alterUsbkeyList = alterUsbkeyManager.getList(sarchPageInfo);
				
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
	public String alterUsbkeyAdd()throws Exception{
		try{
			params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if (alterUsbkey != null && alterUsbkey.getId() != null) {
				alterUsbkey = (AlterUsbkey) alterUsbkeyManager.getObjectById(alterUsbkey.getId());
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
	public String alterUsbkeyDel() throws Exception {
		try {
			if(Utils.isNotNullOrEmpty(ids)){
				//获得多个id
				String[] alterUsbkeyIds = ids.split(",");
				//判断非空
				if(alterUsbkeyIds != null && alterUsbkeyIds.length > 0){
					//遍历id
					for(String alterUsbkeyId:alterUsbkeyIds){
						if(alterUsbkeyId != null && !"".equals(alterUsbkeyId)){
							//根据id获得对象
							alterUsbkey = (AlterUsbkey)alterUsbkeyManager.getObjectById(Integer.parseInt(alterUsbkeyId));		
							//改变表中删除标识
							alterUsbkeyManager.removeObject(alterUsbkey);
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
	public String alterUsbkeySave()throws Exception{
		try {
			if (alterUsbkey != null && alterUsbkey.getVersion() == null ) {
				alterUsbkey.setVersion(1);
			}
			
			User user = (User) getSession().getAttribute("user");
			
			if (alterUsbkey != null) {
				alterUsbkey.setFirstperson(user.getName());
			}
			if (alterUsbkey != null) {
				alterUsbkey.setFirstpid(user.getId());
			}
			if (alterUsbkey != null) {
				alterUsbkey.setFirstsubdate(new Date());
			}
			
			
			alterUsbkeyManager.saveObject(alterUsbkey);
			
			this.getRequest().setAttribute("title", "更换USBKEY申请");
			this.getRequest().setAttribute("url", "/alterusbkey/alterUsbkeyList.action");
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
	public String alterUsbkeyInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(alterUsbkey != null && alterUsbkey.getId() != null){
				alterUsbkey =  (AlterUsbkey)alterUsbkeyManager.getObjectById(alterUsbkey.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public AlterUsbkey getAlterUsbkey() {
		return alterUsbkey;
	}

	public void setAlterUsbkey(AlterUsbkey alterUsbkey) {
		this.alterUsbkey = alterUsbkey;
	}

	public AlterUsbkeyPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(AlterUsbkeyPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public List<AlterUsbkey> getAlterUsbkeyList() {
		return alterUsbkeyList;
	}

	public void setAlterUsbkeyList(List<AlterUsbkey> alterUsbkeyList) {
		this.alterUsbkeyList = alterUsbkeyList;
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



	
}

