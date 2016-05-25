package com.manage.empseccheck.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 员工保密工作自查表
 */

public abstract class AbstractEmpSecCheck extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String confidentiality;
	private String education;
	private String setpwd;
	private String maintenance;
	private String atinternet;
	private String cymj;
	private String classifiedsecret;
	private String matnternet;
	private String savepwdark;
	private String perprocedure;
	private String onlineregist;
	private String handleaffairs;
	private String smedia;
	private String inforpublish;
	private String timelyrepel;
	private String ttbcsd;
	private String rsd;
	private String recordtz;
	private String kconfidentiality;
	private String phandleaffairs;
	private String pconmedium;
	private String pclassified;
	private String ransforieinfor;
	private String abroad;
	private String cleartable;
	private String otherinfor;
	private String rectification;
	private Date cdate;
	private String cname;
	private Integer cid;
	private String username;
	private Integer userid;
	// Property accessors



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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getConfidentiality() {
		return confidentiality;
	}
	public void setConfidentiality(String confidentiality) {
		this.confidentiality = confidentiality;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSetpwd() {
		return setpwd;
	}
	public void setSetpwd(String setpwd) {
		this.setpwd = setpwd;
	}
	public String getMaintenance() {
		return maintenance;
	}
	public void setMaintenance(String maintenance) {
		this.maintenance = maintenance;
	}
	public String getAtinternet() {
		return atinternet;
	}
	public void setAtinternet(String atinternet) {
		this.atinternet = atinternet;
	}
	public String getCymj() {
		return cymj;
	}
	public void setCymj(String cymj) {
		this.cymj = cymj;
	}
	public String getClassifiedsecret() {
		return classifiedsecret;
	}
	public void setClassifiedsecret(String classifiedsecret) {
		this.classifiedsecret = classifiedsecret;
	}
	public String getMatnternet() {
		return matnternet;
	}
	public void setMatnternet(String matnternet) {
		this.matnternet = matnternet;
	}
	public String getSavepwdark() {
		return savepwdark;
	}
	public void setSavepwdark(String savepwdark) {
		this.savepwdark = savepwdark;
	}
	public String getPerprocedure() {
		return perprocedure;
	}
	public void setPerprocedure(String perprocedure) {
		this.perprocedure = perprocedure;
	}
	public String getOnlineregist() {
		return onlineregist;
	}
	public void setOnlineregist(String onlineregist) {
		this.onlineregist = onlineregist;
	}
	public String getHandleaffairs() {
		return handleaffairs;
	}
	public void setHandleaffairs(String handleaffairs) {
		this.handleaffairs = handleaffairs;
	}
	public String getSmedia() {
		return smedia;
	}
	public void setSmedia(String smedia) {
		this.smedia = smedia;
	}
	public String getInforpublish() {
		return inforpublish;
	}
	public void setInforpublish(String inforpublish) {
		this.inforpublish = inforpublish;
	}
	public String getTimelyrepel() {
		return timelyrepel;
	}
	public void setTimelyrepel(String timelyrepel) {
		this.timelyrepel = timelyrepel;
	}
	public String getTtbcsd() {
		return ttbcsd;
	}
	public void setTtbcsd(String ttbcsd) {
		this.ttbcsd = ttbcsd;
	}
	public String getRsd() {
		return rsd;
	}
	public void setRsd(String rsd) {
		this.rsd = rsd;
	}
	public String getRecordtz() {
		return recordtz;
	}
	public void setRecordtz(String recordtz) {
		this.recordtz = recordtz;
	}
	public String getKconfidentiality() {
		return kconfidentiality;
	}
	public void setKconfidentiality(String kconfidentiality) {
		this.kconfidentiality = kconfidentiality;
	}
	public String getPhandleaffairs() {
		return phandleaffairs;
	}
	public void setPhandleaffairs(String phandleaffairs) {
		this.phandleaffairs = phandleaffairs;
	}
	public String getPconmedium() {
		return pconmedium;
	}
	public void setPconmedium(String pconmedium) {
		this.pconmedium = pconmedium;
	}
	public String getPclassified() {
		return pclassified;
	}
	public void setPclassified(String pclassified) {
		this.pclassified = pclassified;
	}
	public String getRansforieinfor() {
		return ransforieinfor;
	}
	public void setRansforieinfor(String ransforieinfor) {
		this.ransforieinfor = ransforieinfor;
	}
	public String getAbroad() {
		return abroad;
	}
	public void setAbroad(String abroad) {
		this.abroad = abroad;
	}
	public String getCleartable() {
		return cleartable;
	}
	public void setCleartable(String cleartable) {
		this.cleartable = cleartable;
	}
	public String getOtherinfor() {
		return otherinfor;
	}
	public void setOtherinfor(String otherinfor) {
		this.otherinfor = otherinfor;
	}
	public String getRectification() {
		return rectification;
	}
	public void setRectification(String rectification) {
		this.rectification = rectification;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

}