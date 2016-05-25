package com.manage.subsidiesdetainper.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 保密补贴扣发通知单
 */

public abstract class AbstractSubsidiesDetainper extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String pcode;
	private Date pnoticedate;
	private String orgname;
	private String orgid;
	private String pname;
	private String pdetaindesc;
	private String officesign;
	private Integer officeid;
	private Date signdate;
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
	public Date getSigndate() {
		return signdate;
	}
	public void setSigndate(Date signdate) {
		this.signdate = signdate;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public Date getPnoticedate() {
		return pnoticedate;
	}
	public void setPnoticedate(Date pnoticedate) {
		this.pnoticedate = pnoticedate;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdetaindesc() {
		return pdetaindesc;
	}
	public void setPdetaindesc(String pdetaindesc) {
		this.pdetaindesc = pdetaindesc;
	}
	public String getOfficesign() {
		return officesign;
	}
	public void setOfficesign(String officesign) {
		this.officesign = officesign;
	}
	public Integer getOfficeid() {
		return officeid;
	}
	public void setOfficeid(Integer officeid) {
		this.officeid = officeid;
	}

}