package com.manage.conagreementyb.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 保密协议书（样本）
 */

public abstract class AbstractConAgreementyb extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String jfcontract;
	private String yfcb;
	private String pame;
	private String classified;
	private String jfsign;
	private Integer jfid;
	private String yfsign;
	private Integer yfid;
	private Date jfdate;
	private Date yfdate;
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
	
	public String getJfcontract() {
		return jfcontract;
	}
	public void setJfcontract(String jfcontract) {
		this.jfcontract = jfcontract;
	}
	public String getYfcb() {
		return yfcb;
	}
	public void setYfcb(String yfcb) {
		this.yfcb = yfcb;
	}
	public String getPame() {
		return pame;
	}
	public void setPame(String pame) {
		this.pame = pame;
	}
	public String getClassified() {
		return classified;
	}
	public void setClassified(String classified) {
		this.classified = classified;
	}
	public String getJfsign() {
		return jfsign;
	}
	public void setJfsign(String jfsign) {
		this.jfsign = jfsign;
	}
	public Integer getJfid() {
		return jfid;
	}
	public void setJfid(Integer jfid) {
		this.jfid = jfid;
	}
	public String getYfsign() {
		return yfsign;
	}
	public void setYfsign(String yfsign) {
		this.yfsign = yfsign;
	}
	public Integer getYfid() {
		return yfid;
	}
	public void setYfid(Integer yfid) {
		this.yfid = yfid;
	}
	public Date getJfdate() {
		return jfdate;
	}
	public void setJfdate(Date jfdate) {
		this.jfdate = jfdate;
	}
	public Date getYfdate() {
		return yfdate;
	}
	public void setYfdate(Date yfdate) {
		this.yfdate = yfdate;
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