package com.manage.addcardstatistics.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import com.alibaba.fastjson.JSON;
import com.base.framework.SpringContextHolder;
import com.base.framework.web.struts.BaseAction;
import com.base.util.ComUtil;
import com.base.util.DateTimeUtil;
import com.base.util.Utils;
import com.manage.addcardstatistics.dao.AddCardStaDao;
import com.manage.addcardstatistics.model.AddCard;


public class AddCardStaAction extends BaseAction {
	
	private Logger logger = Logger.getLogger(AddCardStaAction.class);
	
	private Integer stype;
	
	private String orgid;
	
	private String byear;
	private String eyear;
	private String bmonth;
	private String emonth;
//	private String date;
	private String bdate;
	private String edate;
	private String data;
	private AddCardStaDao accessVoteStaDao = (AddCardStaDao)SpringContextHolder.getBean(AddCardStaDao.class);
	
	
	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 进入页面
	 */
	public String addCardSta() throws Exception{
		return SUCCESS;
	}


	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 办卡统计
	 */
	public String addCardStatistical() throws Exception{
		try {
			List<AddCard> list = null;
			AddCard os = null;
			if(stype != null && stype==0 && Utils.isNotNullOrEmpty(byear) && Utils.isNotNullOrEmpty(eyear)){
				//按年份统计
				//获得相差年数
				int years = DateTimeUtil.yearsBetween(byear,eyear);
				int tempYear = Integer.parseInt(byear);
				if(years>=0 && years<=10){
					list = new ArrayList<AddCard>();
					HashMap<String, String> map = new HashMap<String, String>();
					for(int i=0;i<=years;i++){
						map.put("bdate", tempYear + "-01-01 00:00:00");
						map.put("edate", tempYear + "-12-31 23:59:59");
						map.put("orgid", orgid);
						os = accessVoteStaDao.getAddCardSta(map);
						os.setDate(""+tempYear);
						list.add(os);
						tempYear++;
					}
					data = JSON.toJSONString(list);
				}
				
			}else if(stype != null && stype==1 && Utils.isNotNullOrEmpty(bmonth) && Utils.isNotNullOrEmpty(emonth)){
				//按月份统计
				//获得相差月份
				int months = DateTimeUtil.monthsBetween(bmonth, emonth);
				if(months>=0 && months<=24){
					Calendar cal = Calendar.getInstance(); 
					cal.set(Integer.parseInt(bmonth.substring(0, 4)), Integer.parseInt(bmonth.substring(5))-1, 1);
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
					
					list = new ArrayList<AddCard>();
					HashMap<String, String> map = new HashMap<String, String>();
					for(int i=0;i<=months;i++){
						map.put("bdate", sdf.format(cal.getTime()) + "-01 00:00:00");
						map.put("edate","" + sdf.format(cal.getTime())+"-" + cal.getActualMaximum(Calendar.DATE) + " 23:59:59");
						map.put("orgid", orgid);
						os = accessVoteStaDao.getAddCardSta(map);
						os.setDate(sdf.format(cal.getTime()));
						list.add(os);
						cal.add(Calendar.MONTH, +1);
					}
					data = JSON.toJSONString(list);
				}
				
			}else if(stype != null && stype==2 && Utils.isNotNullOrEmpty(bdate) && Utils.isNotNullOrEmpty(edate)){
				//自定义统计
				//获得相差天数
				int days = DateTimeUtil.daysBetween(bdate,edate);
				if(days>=0 && days<=31){
					list = new ArrayList<AddCard>();
					HashMap<String, String> map = new HashMap<String, String>();

					Date bd = DateTimeUtil.stringToDate(bdate, "yyyy-MM-dd");
					for(int i=0;i<=days;i++){
						map.put("bdate", DateTimeUtil.getPreviousDays(bd, (i-i*2))+ComUtil.BEGIN_TIME);
						map.put("edate", DateTimeUtil.getPreviousDays(bd, (i-i*2))+ComUtil.END_TIME);
						map.put("orgid", orgid);
						os = accessVoteStaDao.getAddCardSta(map);
						os.setDate(DateTimeUtil.getPreviousDays(bd, (i-i*2)));
						list.add(os);
					}
					data = JSON.toJSONString(list);
				}
			}
		} catch (Exception e) {
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

	public Integer getStype() {
		return stype;
	}

	public void setStype(Integer stype) {
		this.stype = stype;
	}


	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}
	
	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getByear() {
		return byear;
	}


	public void setByear(String byear) {
		this.byear = byear;
	}


	public String getEyear() {
		return eyear;
	}


	public void setEyear(String eyear) {
		this.eyear = eyear;
	}


	public String getBmonth() {
		return bmonth;
	}


	public void setBmonth(String bmonth) {
		this.bmonth = bmonth;
	}


	public String getOrgid() {
		return orgid;
	}


	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}


	public String getEmonth() {
		return emonth;
	}


	public void setEmonth(String emonth) {
		this.emonth = emonth;
	}

}
