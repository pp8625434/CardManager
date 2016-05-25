package com.manage.keypartundo.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.keypartundo.action.info.KeypartundoPageInfo;
import com.manage.keypartundo.model.SKeypartundoTab;
import com.manage.keypartundo.service.KeypartundoManager;
import com.manage.user.model.User;

/**
 * 保密要害部门、部位撤销表
 * @author GGM
 *
 */
public class KeypartundoAction extends BaseAction{

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(KeypartundoAction.class);
	private KeypartundoPageInfo pageInfo;
	private SKeypartundoTab keypartundo;
	private List<SKeypartundoTab> kpundoList;
	private String params;
	private String ids;
	
	private KeypartundoManager keypartundoManager = (KeypartundoManager) SpringContextHolder.getBean(SKeypartundoTab.class);

	/**
	 * @see 保密要害部门、部位撤销列表
	 * @author GGM
	 * @date May 16, 2016 4:00:10 PM
	 */
	public String keypartundoList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new KeypartundoPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			kpundoList = keypartundoManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看保密要害部门、部位撤销
	 * @author GGM
	 * @date May 16, 2016 4:12:23 PM
	 */
	public String keypartundoInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(keypartundo != null && keypartundo.getId() != null){
				keypartundo = (SKeypartundoTab) keypartundoManager.getObjectById(keypartundo.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 编辑保密要害部门、部位撤销
	 * @author GGM
	 * @date May 16, 2016 4:25:02 PM
	 */
	public String keypartundoEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(keypartundo != null && keypartundo.getId() != null){
				keypartundo = (SKeypartundoTab) keypartundoManager.getObjectById(keypartundo.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存保密要害部门、部位撤销
	 * @author GGM
	 * @date May 16, 2016 4:33:34 PM
	 */
	public String saveKeypartundo()throws Exception{
		
		try{
			
			User user = (User)getSession().getAttribute("user");
			Date date = new Date();
			if(keypartundo.getVersion() == null){
				keypartundo.setVersion(0);
			}
			if(keypartundo.getUscomdate() == null){
				keypartundo.setUscomdate(date);
			}
			if(keypartundo.getYscomdate() == null){
				keypartundo.setYscomdate(date);
			}
			keypartundo.setUserid(user.getId());
			keypartundo.setUsername(user.getRealname());
			keypartundoManager.saveObject(keypartundo);
			
			this.getRequest().setAttribute("title", "保密要害部门、部位撤销");
			this.getRequest().setAttribute("url", "/keypartundo/keypartundoList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除保密要害部门、部位撤销
	 * @author GGM
	 * @date May 16, 2016 4:40:22 PM
	 */
	public String delKeypartundo()throws Exception{
		
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] comids = ids.split(",");
				if(comids != null && comids.length>0){
					for(String comid:comids){
						if(comid != null && !"".equals(comid)){
							keypartundo = (SKeypartundoTab) keypartundoManager.getObjectById(Integer.parseInt(comid));
							keypartundoManager.removeObjectById(keypartundo.getId());
						}
					}
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}

	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public KeypartundoPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(KeypartundoPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SKeypartundoTab getKeypartundo() {
		return keypartundo;
	}

	public void setKeypartundo(SKeypartundoTab keypartundo) {
		this.keypartundo = keypartundo;
	}

	public List<SKeypartundoTab> getKpundoList() {
		return kpundoList;
	}

	public void setKpundoList(List<SKeypartundoTab> kpundoList) {
		this.kpundoList = kpundoList;
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
