package com.manage.card.action;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.paging.PageInfo;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.base.util.LogUtil;
import com.base.util.MD5Encrypt;
import com.base.util.Utils;
import com.manage.card.action.info.CardPageInfo;
import com.manage.card.model.Card;
import com.manage.card.service.CardManager;

/**
 * @see 卡片Action
 * @author GGM
 *
 */
public class CardAction extends BaseAction{
	
	/**
	 * 记录日志
	 */
	private Logger logger = Logger.getLogger(CardAction.class);	
	private Card card;
	private List<Card> cardList;
	private CardPageInfo pageInfo;
	private String params;
	private String ids;
	private String result;
	private String state;
	
	private CardManager cardManager = (CardManager) SpringContextHolder.getBean(Card.class);
	
	/**
	 * @see 查询卡片列表
	 * @author GGM
	 * @date Nov 25, 2015 2:21:43 PM
	 */
	public String cardList()throws Exception{
		
		try{
			pageInfo = pageInfo == null ? new CardPageInfo() : pageInfo;
//			if (!"".equals(this.state)) {// 根据使用状态查询：0正常使用，1停用 ，2全部
//				if ("0".equals(this.state)) {
//					pageInfo.setF_state(0);
//					pageInfo.setF_state_op(Filter.OPERATOR_EQ);
//				} else if ("1".equals(this.state)) {
//					pageInfo.setF_state(1);
//					pageInfo.setF_state_op(Filter.OPERATOR_EQ);
//				} 
//			} else {
//				this.state = "2";
//			}
			PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
			cardList = cardManager.getList(sarchPageInfo);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 查看卡片详情
	 * @author GGM
	 * @date Nov 25, 2015 2:24:55 PM
	 */
	public String cardInfo()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(card != null && card.getId() != null){
				card = (Card) cardManager.getObjectById(card.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 新增/编辑卡片信息
	 * @author GGM
	 * @date Nov 25, 2015 2:26:20 PM
	 */
	public String cardEdit()throws Exception{
		
		try{
			String params = PageParamsUtil.getPageParam(pageInfo);
			this.getRequest().setAttribute("params", params);
			if(card != null && card.getId() != null){
				card = (Card) cardManager.getObjectById(card.getId());
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 保存新增/编辑的卡片信息
	 * @author GGM
	 * @date Nov 25, 2015 2:26:55 PM
	 */
	public String saveCard()throws Exception{
		
		try{
			// 判断日志操作类型（增、删）
			int typeNum = LogUtil.LOG_ADD_TYPE;
			if (card.getId() != null) {
				typeNum = LogUtil.LOG_UPDATE_TYPE;
			}
			Date date = new Date();
			if (card.getId() == null) {
				card.setState(0);
				card.setAddtime(date);
			}
			if(card.getCredit()==null){
				card.setCredit(0.0);
			}
			if(card.getMoney()==null){
				card.setMoney(0.0);
			}
			if(card.getDiscount()==null){
				card.setDiscount(10.0);
			}
			cardManager.saveObject(card);
			this.getRequest().setAttribute("title", "卡片管理");
			this.getRequest().setAttribute("url", "/card/cardList.action");
			this.getRequest().setAttribute("params", this.params);
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 删除卡片信息
	 * @author GGM
	 * @date Nov 25, 2015 2:33:42 PM
	 */
	public String cardDelete()throws Exception {
		
		try{
			if (Utils.isNotNullOrEmpty(ids)) {
				// 获得多个id
				String[] cid = ids.split(",");
				// 判断非空
				if (cid != null && cid.length > 0) {
					// 遍历id
					for (String cardid : cid) {
						if (cardid != null && !"".equals(cardid)) {
							// 根据id获得对象
							card = (Card) cardManager.getObjectById(Integer.parseInt(cardid));
							cardManager.removeObjectById(card.getId());
						}
					}
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 验证卡号重复
	 * @author GGM
	 * @date Nov 25, 2015 2:44:07 PM
	 */
	public String checkCardNum()throws Exception{
		
		try{
			String cardnum = getRequest().getParameter("cardnum");
			if (Utils.isNotNullOrEmpty(cardnum)) {
				card = cardManager.getCardByCardnum(cardnum);
				if (card != null) {
					result = "succ";
				} else {
					result = "false";
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @see 验证身份证号码重复
	 * @author GGM
	 * @date Nov 26, 2015 9:32:30 AM
	 */
	public String checkIcard()throws Exception{
		
		try{
			String identitycard = getRequest().getParameter("identitycard");
			if (Utils.isNotNullOrEmpty(identitycard)) {
				card = cardManager.getCardByIcard(identitycard);
				if (card != null) {
					result = "succ";
				} else {
					result = "false";
				}
			}
		}catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @author LLJ
	 * @date Dec 14, 2015 4:32:10 PM
	 * @return
	 * @throws Exception
	 * @see 重置卡片密码
	 */
	public String reSetCardPassword() throws Exception{
		List<Card> clist = cardManager.getObjects();
		if(clist != null && clist.size()>0){
			for(Card c : clist){
				if(Utils.isNotNullOrEmpty(c.getIdentitycard())){
					String temppwd = c.getIdentitycard().substring(c.getIdentitycard().length()-6, c.getIdentitycard().length());
					c.setPassword(MD5Encrypt.encrypt(temppwd));
					cardManager.saveObject(c);
				}
			}
			System.out.println("执行完成："+clist.size());
		}
		
		return SUCCESS;
	}
	
	/**
	 * @author DL
	 * @date Mar 11, 2016
	 * @param 
	 * @return
	 * @see 根据卡号获得卡片信息
	 */
	public String getCardInfoByCardNum() throws Exception{
		try{
			String cardnum = getRequest().getParameter("cardnum");
			if (Utils.isNotNullOrEmpty(cardnum)) {
				
				Card card = new Card();
				card = cardManager.getCardByCardnum(cardnum);
				if (card != null) {
					result = JSON.toJSONString(card);
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

	public Card getCard() {
		return card;
	}

	public void setCard(Card card) {
		this.card = card;
	}

	public List<Card> getCardList() {
		return cardList;
	}

	public void setCardList(List<Card> cardList) {
		this.cardList = cardList;
	}

	public CardPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CardPageInfo pageInfo) {
		this.pageInfo = pageInfo;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
}
