package com.manage.subsidiesdetain.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 保密补贴扣发通知单（保密办留存）
 */

public abstract class AbstractSubsidiesDetain extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String code;
	private Date noticedate;
	private String orgid;
	private String orgname;
	private String name;
	private String detaindesc;
	private String detainsign;
	private Integer dsid;
	private Date signdate;
	private Double deductamount;
	private Date detainstartdate;
	private Date detainenddate;
	private String promoter;
	private Integer promoterid;
	private Date promoterdate;
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Date getNoticedate() {
		return noticedate;
	}
	public void setNoticedate(Date noticedate) {
		this.noticedate = noticedate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetaindesc() {
		return detaindesc;
	}
	public void setDetaindesc(String detaindesc) {
		this.detaindesc = detaindesc;
	}
	public String getDetainsign() {
		return detainsign;
	}
	public void setDetainsign(String detainsign) {
		this.detainsign = detainsign;
	}
	public Integer getDsid() {
		return dsid;
	}
	public void setDsid(Integer dsid) {
		this.dsid = dsid;
	}
	public Date getSigndate() {
		return signdate;
	}
	public void setSigndate(Date signdate) {
		this.signdate = signdate;
	}
	public Double getDeductamount() {
		return deductamount;
	}
	public void setDeductamount(Double deductamount) {
		this.deductamount = deductamount;
	}
	public Date getDetainstartdate() {
		return detainstartdate;
	}
	public void setDetainstartdate(Date detainstartdate) {
		this.detainstartdate = detainstartdate;
	}
	public Date getDetainenddate() {
		return detainenddate;
	}
	public void setDetainenddate(Date detainenddate) {
		this.detainenddate = detainenddate;
	}
	public String getPromoter() {
		return promoter;
	}
	public void setPromoter(String promoter) {
		this.promoter = promoter;
	}
	public Integer getPromoterid() {
		return promoterid;
	}
	public void setPromoterid(Integer promoterid) {
		this.promoterid = promoterid;
	}
	public Date getPromoterdate() {
		return promoterdate;
	}
	public void setPromoterdate(Date promoterdate) {
		this.promoterdate = promoterdate;
	}

}