package com.manage.confidentiality.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 保密责任书
 */

public abstract class AbstractConfidentiality extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String partya;
	private String partyb;
	private String paname;
	private String pbname;
	private Integer paid;
	private Integer pbid;
	private Date padate;
	private Date pbdate;
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
	
	public String getPartya() {
		return partya;
	}
	public void setPartya(String partya) {
		this.partya = partya;
	}
	public String getPartyb() {
		return partyb;
	}
	public void setPartyb(String partyb) {
		this.partyb = partyb;
	}
	public String getPaname() {
		return paname;
	}
	public void setPaname(String paname) {
		this.paname = paname;
	}
	public String getPbname() {
		return pbname;
	}
	public void setPbname(String pbname) {
		this.pbname = pbname;
	}
	public Integer getPaid() {
		return paid;
	}
	public void setPaid(Integer paid) {
		this.paid = paid;
	}
	public Integer getPbid() {
		return pbid;
	}
	public void setPbid(Integer pbid) {
		this.pbid = pbid;
	}
	public Date getPadate() {
		return padate;
	}
	public void setPadate(Date padate) {
		this.padate = padate;
	}
	public Date getPbdate() {
		return pbdate;
	}
	public void setPbdate(Date pbdate) {
		this.pbdate = pbdate;
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