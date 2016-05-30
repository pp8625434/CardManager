package com.manage.changeinternet.model.original;

import java.util.Date;

/**
 * AbstractSChangeinternetTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSChangeinternetTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String orgname;
	private String orgid;
	private Date cdate;
	private String depdesc;
	private Date depdate;
	private String mdepdesc;
	private Date mdepdate;
	private String username;
	private Integer userid;

	// Constructors

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

	/** default constructor */
	public AbstractSChangeinternetTab() {
	}

	/** minimal constructor */
	public AbstractSChangeinternetTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSChangeinternetTab(Integer id, Integer version,
			String orgname, String orgid, Date cdate,String depdesc, Date depdate, String mdepdesc,
			Date mdepdate,String username,Integer userid) {
		this.id = id;
		this.version = version;
		this.orgname = orgname;
		this.orgid = orgid;
		this.cdate = cdate;
		this.depdesc = depdesc;
		this.depdate = depdate;
		this.mdepdesc = mdepdesc;
		this.mdepdate = mdepdate;
		this.username = username;
		this.userid = userid;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVersion() {
		return this.version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getOrgname() {
		return this.orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getOrgid() {
		return this.orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}


	public String getDepdesc() {
		return this.depdesc;
	}

	public void setDepdesc(String depdesc) {
		this.depdesc = depdesc;
	}

	public Date getDepdate() {
		return this.depdate;
	}

	public void setDepdate(Date depdate) {
		this.depdate = depdate;
	}

	public String getMdepdesc() {
		return this.mdepdesc;
	}

	public void setMdepdesc(String mdepdesc) {
		this.mdepdesc = mdepdesc;
	}

	public Date getMdepdate() {
		return this.mdepdate;
	}

	public void setMdepdate(Date mdepdate) {
		this.mdepdate = mdepdate;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

}