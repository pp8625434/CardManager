package com.manage.classifiedprint.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.classifiedprint.action.info.ClassifiedprintPageInfo;
import com.manage.classifiedprint.model.SClassifiedprintTab;
import com.manage.classifiedprint.service.ClassifiedprintManager;
import com.manage.leavepromise.service.LeavepromiseManager;
import com.manage.user.model.User;

/**
 * 涉密信息打印输出审批登记
 * @author GGM
 *
 */
public class ClassifiedprintAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(ClassifiedprintAction.class);	
	private ClassifiedprintPageInfo pageInfo;
	private SClassifiedprintTab classifiedprint;
	private List<SClassifiedprintTab> printList;
	private String params;
	private String ids;
	
	private ClassifiedprintManager classifiedprintManager= (ClassifiedprintManager) SpringContextHolder.getBean(SClassifiedprintTab.class);
	
	/**
	 * @see 获得涉密信息打印输出审批登记列表
	 * @author GGM
	 * @date May 12, 2016 5:40:36 PM
	 */
	public String classifiedprintList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new ClassifiedprintPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			printList = classifiedprintManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看涉密信息打印输出审批登记
	 * @author GGM
	 * @date May 12, 2016 5:52:27 PM
	 */
	public String classifiedprintInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedprint !=null && classifiedprint.getId() != null){
				classifiedprint = (SClassifiedprintTab) classifiedprintManager.getObjectById(classifiedprint.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑涉密信息打印输出审批登记
	 * @author GGM
	 * @date May 13, 2016 9:19:47 AM
	 */
	public String classifiedprintEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(classifiedprint !=null && classifiedprint.getId() != null){
				classifiedprint = (SClassifiedprintTab) classifiedprintManager.getObjectById(classifiedprint.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存涉密信息打印输出审批登记
	 * @author GGM
	 * @date May 13, 2016 9:27:29 AM
	 */
	public String saveClassifiedprint()throws Exception{
		
		try{
			User user = (User) getSession().getAttribute("user");
			Date date = new Date();
			
			if(classifiedprint.getVersion() == null){
				classifiedprint.setVersion(0);
			}
			if(classifiedprint.getPrinterdate() == null){
				classifiedprint.setPrinterdate(date);
			}
			
			classifiedprint.setUsername(user.getRealname());
			classifiedprint.setUserid(user.getId());
			
			classifiedprintManager.saveObject(classifiedprint);
			this.getRequest().setAttribute("title", "涉密信息打印输出审批登记");
			this.getRequest().setAttribute("url", "/classifiedprint/classifiedprintList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除涉密信息打印输出审批登记
	 * @author GGM
	 * @date May 13, 2016 10:33:35 AM
	 */
	public String delClassifiedprint()throws Exception{
		
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] lpids = ids.split(",");
				if(lpids !=null && lpids.length>0){
					for(String lpid : lpids){
						if(lpid != null && lpid.length()>0){
							classifiedprint = (SClassifiedprintTab) classifiedprintManager.getObjectById(Integer.parseInt(lpid));
							classifiedprintManager.removeObjectById(classifiedprint.getId());
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

	public ClassifiedprintPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ClassifiedprintPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public SClassifiedprintTab getClassifiedprint() {
		return classifiedprint;
	}

	public void setClassifiedprint(SClassifiedprintTab classifiedprint) {
		this.classifiedprint = classifiedprint;
	}

	public List<SClassifiedprintTab> getPrintList() {
		return printList;
	}

	public void setPrintList(List<SClassifiedprintTab> printList) {
		this.printList = printList;
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
