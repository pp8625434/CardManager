package com.manage.commitment.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.commitment.action.info.CommitmentPageInfo;
import com.manage.commitment.model.SCommitmentTab;
import com.manage.commitment.service.CommitmentManager;
import com.manage.user.model.User;

/**
 * 员工安全保密承诺书
 * @author GGM
 *
 */
public class CommitmentAction extends BaseAction{

	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CommitmentAction.class);
	private CommitmentPageInfo pageInfo;
	private SCommitmentTab scommitmentTab;
	private List<SCommitmentTab> commitList;
	private String params;
	private String ids;
	
	private CommitmentManager commitmentManager = (CommitmentManager) SpringContextHolder.getBean(SCommitmentTab.class);

	/**
	 * @see 员工安全保密承诺书列表
	 * @author GGM
	 * @date May 12, 2016 10:56:01 AM
	 */
	public String commitmentList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new CommitmentPageInfo():pageInfo;
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			commitList = commitmentManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看员工安全保密承诺书
	 * @author GGM
	 * @date May 12, 2016 2:08:02 PM
	 */
	public String commitmentInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(scommitmentTab != null && scommitmentTab.getId() != null){
				scommitmentTab = (SCommitmentTab) commitmentManager.getObjectById(scommitmentTab.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 编辑员工安全保密承诺书
	 * @author GGM
	 * @date May 12, 2016 2:17:30 PM
	 */
	public String commitmentEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(scommitmentTab != null && scommitmentTab.getId() != null){
				scommitmentTab = (SCommitmentTab) commitmentManager.getObjectById(scommitmentTab.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存员工安全保密承诺书
	 * @author GGM
	 * @date May 12, 2016 2:20:03 PM
	 */
	public String saveCommitment()throws Exception{
		
		try{
			
			User user = (User)getSession().getAttribute("user");
			Date date = new Date();
			
			if(scommitmentTab.getVersion() == null){
				scommitmentTab.setVersion(0);
			}
			if(scommitmentTab.getComdate() == null){
				scommitmentTab.setComdate(date);
			}
			
			scommitmentTab.setUserid(user.getId());
			scommitmentTab.setUsername(user.getRealname());
			commitmentManager.saveObject(scommitmentTab);
			
			this.getRequest().setAttribute("title", "员工安全保密承诺书");
			this.getRequest().setAttribute("url", "/commitment/commitmentList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除员工安全保密承诺书
	 * @author GGM
	 * @date May 12, 2016 2:28:29 PM
	 */
	public String delCommitment()throws Exception{
		
		try{
			
			if(Utils.isNotNullOrEmpty(ids)){
				String[] comids = ids.split(",");
				if(comids != null && comids.length>0){
					for(String comid:comids){
						if(comid != null && !"".equals(comid)){
							scommitmentTab = (SCommitmentTab) commitmentManager.getObjectById(Integer.parseInt(comid));
							commitmentManager.removeObjectById(scommitmentTab.getId());
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

	public CommitmentPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CommitmentPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}


	public SCommitmentTab getScommitmentTab() {
		return scommitmentTab;
	}

	public void setScommitmentTab(SCommitmentTab scommitmentTab) {
		this.scommitmentTab = scommitmentTab;
	}

	public List<SCommitmentTab> getCommitList() {
		return commitList;
	}

	public void setCommitList(List<SCommitmentTab> commitList) {
		this.commitList = commitList;
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
