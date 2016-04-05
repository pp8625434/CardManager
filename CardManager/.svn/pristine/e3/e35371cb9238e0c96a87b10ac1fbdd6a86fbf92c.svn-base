package com.manage.money.action;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import org.apache.log4j.Logger;
import com.alibaba.fastjson.JSON;
import com.base.framework.BaseConfigHolder;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.card.model.Card;
import com.manage.card.service.CardManager;
import com.manage.money.action.info.MoneyLogPageInfo;
import com.manage.money.model.CreditResult;
import com.manage.money.model.MoneyLog;
import com.manage.money.service.MoneyLogManager;
import com.manage.user.model.User;

public class MoneyLogAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(MoneyLogAction.class);	
	private MoneyLog moneyLog;
	private MoneyLogPageInfo pageInfo;
	private List<MoneyLog> moneyLogList;
	private String params;
	private String isuse;
	private String ids;
	private String data;
	private String startMoney;
	private String endMoney;
	private String startDate;
	private String endDate;
	
	CreditResult result;
	
	private MoneyLogManager moneyLogManager=(MoneyLogManager) SpringContextHolder.getBean(MoneyLog.class);
	private CardManager cardManager = (CardManager) SpringContextHolder.getBean(Card.class);
	
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 充值
	 */
	public String toEditMoneyLog()throws Exception{
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date Nov 24, 2015
	 * @param 
	 * @return
	 * @see 保存
	 */
	public String saveMoneyLog()throws Exception{
		try {
			
			User user = (User) getSession().getAttribute("user");
//			moneyLog.setVersion(0);
//			moneyLog.setAddtime(new Date());
//			moneyLog.setCreator(user.getId());
//			moneyLog.setCreatorname(user.getName());
//			moneyLog.setMtype(0);			//默认后台 0
//			moneyLogManager.saveObject(moneyLog);
			
			URL url = new URL(BaseConfigHolder.getRechargeUrl()+"?uid="+moneyLog.getUid()+"&cardnum="+moneyLog.getCardnum()+"&money="+moneyLog.getMoney()+"&type=0&remarks="+moneyLog.getRemarks()+"&creator="+user.getId()+"&creatorname="+user.getRealname());
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			connection.connect();
			BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),"UTF-8"));
			String line;
			StringBuilder sb = new StringBuilder();
			while((line = br.readLine())!=null){
				sb.append(line);
			}
			result = JSON.parseObject(sb.toString(), CreditResult.class);
			br.close();
			connection.disconnect();
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	public String checkCardNum()throws Exception{
		
		try{
			String cardnum = getRequest().getParameter("cardnum");
			if (Utils.isNotNullOrEmpty(cardnum)) {
				
				Card card = new Card();
				card = cardManager.getCardByCardnum(cardnum);
				if (card != null) {
					data = JSON.toJSONString(card);
				} 
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @return
	 * @throws Exception
	 * @see 充值记录
	 */
	public String rechargeLog() throws Exception{
		try{
			User user = (User)getSession().getAttribute("user");
			
			pageInfo = pageInfo == null ? new MoneyLogPageInfo() : pageInfo;
			pageInfo.setF_creator(user.getId());			//充值人id
			pageInfo.setF_creator_op(Filter.OPERATOR_EQ);
			pageInfo.setF_mtype(0);							//充值类型
			pageInfo.setF_mtype_op(Filter.OPERATOR_EQ);
			
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			StringBuffer sb =  new StringBuffer();
			sb.append(" 1=1 ");
			if (Utils.isNotNullOrEmpty(startMoney) || Utils.isNotNullOrEmpty(endMoney)) {
				if (Utils.isNotNullOrEmpty(startMoney) && Utils.isNotNullOrEmpty(endMoney)) {
					sb.append(" and money >=").append(startMoney);
					sb.append(" and money <=").append(endMoney);
				}
				if (Utils.isNotNullOrEmpty(startMoney) && Utils.isNullOrEmpty(endMoney)) {
					sb.append(" and money >=").append(startMoney);
				}
				if (Utils.isNullOrEmpty(startMoney) && Utils.isNotNullOrEmpty(endMoney)) {
					sb.append(" and money <=").append(endMoney);
				}
			}
			
			if (Utils.isNotNullOrEmpty(startDate) || Utils.isNotNullOrEmpty(endDate)) {
				// 时间查询条件(开始时间和结束时间都不为空)
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and addtime >=' ").append(startDate).append(" 00:00:00' ");
					sb.append(" and addtime <=' ").append(endDate).append(" 23:59:59' ");
				}
				// 开始时间不为空，结束时间为空
				if (Utils.isNotNullOrEmpty(startDate) && Utils.isNullOrEmpty(endDate)) {
					sb.append(" and addtime >=' ").append(startDate).append(" 00:00:00' ");
				}
				// 开始时间为空，结束时间不为空
				if (Utils.isNullOrEmpty(startDate) && Utils.isNotNullOrEmpty(endDate)) {
					sb.append(" and addtime <=' ").append(endDate).append(" 23:59:59' ");
				}
			}
			
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sb.toString());
			sarchPageInfo.getFilter().setFilterSql(filterSql);
			moneyLogList = (List<MoneyLog>) moneyLogManager.getList(sarchPageInfo);
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


	public MoneyLog getAdvertisement() {
		return moneyLog;
	}


	public void setAdvertisement(MoneyLog advertisement) {
		this.moneyLog = advertisement;
	}
	public String getIsuse() {
		return isuse;
	}


	public void setIsuse(String isuse) {
		this.isuse = isuse;
	}

	public MoneyLog getRecharge() {
		return moneyLog;
	}

	public void setRecharge(MoneyLog recharge) {
		this.moneyLog = recharge;
	}

	public MoneyLogPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(MoneyLogPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public MoneyLog getMoneyLog() {
		return moneyLog;
	}

	public void setMoneyLog(MoneyLog moneyLog) {
		this.moneyLog = moneyLog;
	}

	public CreditResult getResult() {
		return result;
	}

	public void setResult(CreditResult result) {
		this.result = result;
	}

	public List getMoneyLogList() {
		return moneyLogList;
	}

	public void setMoneyLogList(List moneyLogList) {
		this.moneyLogList = moneyLogList;
	}

	public String getStartMoney() {
		return startMoney;
	}

	public void setStartMoney(String startMoney) {
		this.startMoney = startMoney;
	}

	public String getEndMoney() {
		return endMoney;
	}

	public void setEndMoney(String endMoney) {
		this.endMoney = endMoney;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


//	public List<MoneyLog> getRechargeList() {
//		return rechargeList;
//	}
//
//	public void setRechargeList(List<MoneyLog> rechargeList) {
//		this.rechargeList = rechargeList;
//	}
}
