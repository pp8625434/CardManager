package com.manage.keypartexam.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.keypartexam.action.info.KeypartexamPageInfo;
import com.manage.keypartexam.model.SKeypartexamTab;
import com.manage.keypartexam.service.KeypartexamManager;
import com.manage.user.model.User;

/**
 * 保密要害部门、部位审定表
 * @author GGM
 *
 */
public class KeypartexamAction extends BaseAction{

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(KeypartexamAction.class);
	private KeypartexamPageInfo pageInfo;
	private SKeypartexamTab keypartexam;
	private List<SKeypartexamTab> kpexamList;
	private String params;
	private String ids;
	
	private KeypartexamManager keypartexamManager = (KeypartexamManager) SpringContextHolder.getBean(SKeypartexamTab.class);

	/**
	 * @see 保密要害部门、部位审定列表
	 * @author GGM
	 * @date May 16, 2016 3:00:10 PM
	 */
	public String keypartexamList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new KeypartexamPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			kpexamList = keypartexamManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看保密要害部门、部位审定
	 * @author GGM
	 * @date May 16, 2016 3:12:23 PM
	 */
	public String keypartexamInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(keypartexam != null && keypartexam.getId() != null){
				keypartexam = (SKeypartexamTab) keypartexamManager.getObjectById(keypartexam.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 编辑保密要害部门、部位审定
	 * @author GGM
	 * @date May 16, 2016 3:25:02 PM
	 */
	public String keypartexamEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(keypartexam != null && keypartexam.getId() != null){
				keypartexam = (SKeypartexamTab) keypartexamManager.getObjectById(keypartexam.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存保密要害部门、部位审定
	 * @author GGM
	 * @date May 16, 2016 3:33:34 PM
	 */
	public String saveKeypartexam()throws Exception{
		
		try{
			
			User user = (User)getSession().getAttribute("user");
			Date date = new Date();
			
			if(keypartexam.getVersion() == null){
				keypartexam.setVersion(0);
			}
			if(keypartexam.getUscomdate() == null){
				keypartexam.setUscomdate(date);
			}
			if(keypartexam.getYscomdate() == null){
				keypartexam.setYscomdate(date);
			}
			
			keypartexam.setUserid(user.getId());
			keypartexam.setUsername(user.getRealname());
			keypartexamManager.saveObject(keypartexam);
			
			this.getRequest().setAttribute("title", "保密要害部门、部位审定");
			this.getRequest().setAttribute("url", "/keypartexam/keypartexamList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除保密要害部门、部位审定
	 * @author GGM
	 * @date May 16, 2016 3:40:22 PM
	 */
	public String delKeypartexam()throws Exception{
		
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] comids = ids.split(",");
				if(comids != null && comids.length>0){
					for(String comid:comids){
						if(comid != null && !"".equals(comid)){
							keypartexam = (SKeypartexamTab) keypartexamManager.getObjectById(Integer.parseInt(comid));
							keypartexamManager.removeObjectById(keypartexam.getId());
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

	public KeypartexamPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(KeypartexamPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SKeypartexamTab getKeypartexam() {
		return keypartexam;
	}

	public void setKeypartexam(SKeypartexamTab keypartexam) {
		this.keypartexam = keypartexam;
	}

	public List<SKeypartexamTab> getKpexamList() {
		return kpexamList;
	}

	public void setKpexamList(List<SKeypartexamTab> kpexamList) {
		this.kpexamList = kpexamList;
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
