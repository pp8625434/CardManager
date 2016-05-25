package com.manage.meetsecrecyrecord.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 涉密会议保密方案执行情况记录表
 */

public abstract class AbstractMeetSecrecyRecord extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String meetname;
	private String orgid;
	private String orgname;
	private Date meetdate;
	private String classification;
	private String meetplace;
	private String meetcontent;
	private String meeters;
	private Integer issecuritywork;
	private String sworkremark;
	private Integer istelshield;
	private String telshieldremark;
	private Integer isstoretel;
	private String storetelremark;
	private Integer scheck;
	private String scheckremark;
	private Integer isdeclares;
	private String declareremark;
	private Integer issignin;
	private String signinremark;
	private Integer iswiffi;
	private String wiffiremark;
	private Integer istape;
	private String taperemark;
	private String taper;
	private String videor;
	private Integer issecurityfile;
	private Integer total;
	private Integer giveout;
	private Integer takeback;
	private String takebacker;
	private Integer isguard;
	private String guardremark;
	private String bmname;
	private Integer bmnameid;
	private Date bmsigndate;
	private String sofficedesc;
	private String sofficesign;
	private Integer sofficeid;
	private Date sofficedate;
	private String username;
	private Integer userid;

	@Override
	public boolean equals(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public Serializable getPrimarykey() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public String getOrgid() {
		return orgid;
	}
	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}
	
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	
	public String getMeetname() {
		return meetname;
	}
	public void setMeetname(String meetname) {
		this.meetname = meetname;
	}
	public Date getMeetdate() {
		return meetdate;
	}
	public void setMeetdate(Date meetdate) {
		this.meetdate = meetdate;
	}
	public String getMeetplace() {
		return meetplace;
	}
	public void setMeetplace(String meetplace) {
		this.meetplace = meetplace;
	}
	public String getBmname() {
		return bmname;
	}
	public void setBmname(String bmname) {
		this.bmname = bmname;
	}
	public String getMeetcontent() {
		return meetcontent;
	}
	public void setMeetcontent(String meetcontent) {
		this.meetcontent = meetcontent;
	}

	public String getSofficedesc() {
		return sofficedesc;
	}
	public void setSofficedesc(String sofficedesc) {
		this.sofficedesc = sofficedesc;
	}
	public String getSofficesign() {
		return sofficesign;
	}
	public void setSofficesign(String sofficesign) {
		this.sofficesign = sofficesign;
	}
	public Integer getSofficeid() {
		return sofficeid;
	}
	public void setSofficeid(Integer sofficeid) {
		this.sofficeid = sofficeid;
	}
	public Date getSofficedate() {
		return sofficedate;
	}
	public void setSofficedate(Date sofficedate) {
		this.sofficedate = sofficedate;
	}
	
	public String getMeeters() {
		return meeters;
	}
	public void setMeeters(String meeters) {
		this.meeters = meeters;
	}
	public Integer getIssecuritywork() {
		return issecuritywork;
	}
	public void setIssecuritywork(Integer issecuritywork) {
		this.issecuritywork = issecuritywork;
	}
	public String getSworkremark() {
		return sworkremark;
	}
	public void setSworkremark(String sworkremark) {
		this.sworkremark = sworkremark;
	}
	public Integer getIstelshield() {
		return istelshield;
	}
	public void setIstelshield(Integer istelshield) {
		this.istelshield = istelshield;
	}
	public String getTelshieldremark() {
		return telshieldremark;
	}
	public void setTelshieldremark(String telshieldremark) {
		this.telshieldremark = telshieldremark;
	}
	public Integer getIsstoretel() {
		return isstoretel;
	}
	public void setIsstoretel(Integer isstoretel) {
		this.isstoretel = isstoretel;
	}
	public String getStoretelremark() {
		return storetelremark;
	}
	public void setStoretelremark(String storetelremark) {
		this.storetelremark = storetelremark;
	}
	public Integer getScheck() {
		return scheck;
	}
	public void setScheck(Integer scheck) {
		this.scheck = scheck;
	}
	public String getScheckremark() {
		return scheckremark;
	}
	public void setScheckremark(String scheckremark) {
		this.scheckremark = scheckremark;
	}
	public Integer getIsdeclares() {
		return isdeclares;
	}
	public void setIsdeclares(Integer isdeclares) {
		this.isdeclares = isdeclares;
	}
	public String getDeclareremark() {
		return declareremark;
	}
	public void setDeclareremark(String declareremark) {
		this.declareremark = declareremark;
	}
	public Integer getIssignin() {
		return issignin;
	}
	public void setIssignin(Integer issignin) {
		this.issignin = issignin;
	}
	public String getSigninremark() {
		return signinremark;
	}
	public void setSigninremark(String signinremark) {
		this.signinremark = signinremark;
	}
	public Integer getIswiffi() {
		return iswiffi;
	}
	public void setIswiffi(Integer iswiffi) {
		this.iswiffi = iswiffi;
	}
	public String getWiffiremark() {
		return wiffiremark;
	}
	public void setWiffiremark(String wiffiremark) {
		this.wiffiremark = wiffiremark;
	}
	public Integer getIstape() {
		return istape;
	}
	public void setIstape(Integer istape) {
		this.istape = istape;
	}
	public String getTaperemark() {
		return taperemark;
	}
	public void setTaperemark(String taperemark) {
		this.taperemark = taperemark;
	}
	public String getTaper() {
		return taper;
	}
	public void setTaper(String taper) {
		this.taper = taper;
	}
	public String getVideor() {
		return videor;
	}
	public void setVideor(String videor) {
		this.videor = videor;
	}
	public Integer getIssecurityfile() {
		return issecurityfile;
	}
	public void setIssecurityfile(Integer issecurityfile) {
		this.issecurityfile = issecurityfile;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getGiveout() {
		return giveout;
	}
	public void setGiveout(Integer giveout) {
		this.giveout = giveout;
	}
	public Integer getTakeback() {
		return takeback;
	}
	public void setTakeback(Integer takeback) {
		this.takeback = takeback;
	}
	public String getTakebacker() {
		return takebacker;
	}
	public void setTakebacker(String takebacker) {
		this.takebacker = takebacker;
	}
	public Integer getIsguard() {
		return isguard;
	}
	public void setIsguard(Integer isguard) {
		this.isguard = isguard;
	}
	public String getGuardremark() {
		return guardremark;
	}
	public void setGuardremark(String guardremark) {
		this.guardremark = guardremark;
	}
	public Integer getBmnameid() {
		return bmnameid;
	}
	public void setBmnameid(Integer bmnameid) {
		this.bmnameid = bmnameid;
	}
	public Date getBmsigndate() {
		return bmsigndate;
	}
	public void setBmsigndate(Date bmsigndate) {
		this.bmsigndate = bmsigndate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

}