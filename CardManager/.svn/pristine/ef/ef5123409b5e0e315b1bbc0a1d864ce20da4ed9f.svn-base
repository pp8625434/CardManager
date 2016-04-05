package com.manage.creditrank.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.base.framework.SpringContextHolder;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.creditrank.action.info.CreditRankPageInfo;
import com.manage.creditrank.model.CreditRank;
import com.manage.creditrank.service.CreditRankManager;

/**
 * 积分排行
 * @author GGM
 *
 */
public class CreditRankAction extends BaseAction{
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CreditRankAction.class); 
	private List<CreditRank> cList;
	private String data;
	private CreditRankPageInfo pageInfo;
	
	private String realname; //姓名
	private String cellphone; // 电话
	
	private CreditRankManager creditRankManager = (CreditRankManager) SpringContextHolder.getBean(CreditRank.class);
	
	
	
	
	public String toCreditRank()throws Exception{
		try {
			if(pageInfo == null){
				pageInfo = new CreditRankPageInfo();
			}
			int count = creditRankManager.findAllCreditRankNum(realname,cellphone); //总页数
			
			pageInfo.setCurrentPage(pageInfo.getCurrentPage()!=0?pageInfo.getCurrentPage():1);
			pageInfo.setPageSize(20);
			count = pageInfo.getMaxRecords() != 0 && count > pageInfo.getMaxRecords() ? pageInfo.getMaxRecords() : count;
			
			pageInfo.setTotalRecords(count);		
			
			int totoalPage = 0;
			totoalPage= count%pageInfo.getPageSize() > 0 ? count/pageInfo.getPageSize() + 1  : count/pageInfo.getPageSize();
			pageInfo.setTotalPage(totoalPage);
			
			pageInfo.setStartRowPosition((pageInfo.getCurrentPage()-1)*pageInfo.getPageSize());
			
			if(pageInfo.getTotalRecords() != 0 && (pageInfo.getStartRowPosition() + pageInfo.getPageSize()) > pageInfo.getTotalRecords()){
				pageInfo.setEndRowPosition(pageInfo.getTotalRecords() - pageInfo.getStartRowPosition());
			}else{
				pageInfo.setEndRowPosition(pageInfo.getPageSize());			
			}
			
			//PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			cList = creditRankManager.findCreditRankList(pageInfo.getStartRowPosition(),pageInfo.getEndRowPosition(),realname,cellphone);
		} catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	/**
	 * @see 获得积分排行列表
	 * @author GGM
	 * @date Jan 22, 2016 3:07:11 PM
	 */
	public String creditrankList()throws Exception{
		
		return SUCCESS;
	}
	
	public Logger getLogger() {
		return logger;
	}
	public void setLogger(Logger logger) {
		this.logger = logger;
	}
	public List<CreditRank> getCList() {
		return cList;
	}
	public void setCList(List<CreditRank> list) {
		cList = list;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public CreditRankPageInfo getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(CreditRankPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}
	public List<CreditRank> getcList() {
		return cList;
	}
	public void setcList(List<CreditRank> cList) {
		this.cList = cList;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	
}
