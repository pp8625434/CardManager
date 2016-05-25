package com.manage.conagreement.model.original;

import java.util.Date;

/**
 * AbstractSConagreementTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSConagreementTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String jfname;
	private String yfname;
	private String jfsign;
	private Integer jfid;
	private String yfsign;
	private Integer yfid;
	private Date jfdate;
	private Date yfdate;
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
	public AbstractSConagreementTab() {
	}

	/** minimal constructor */
	public AbstractSConagreementTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSConagreementTab(Integer id, Integer version, String jfname,
			String yfname, String jfsign, Integer jfid, String yfsign,
			Integer yfid, Date jfdate, Date yfdate,String username,Integer userid) {
		this.id = id;
		this.version = version;
		this.jfname = jfname;
		this.yfname = yfname;
		this.jfsign = jfsign;
		this.jfid = jfid;
		this.yfsign = yfsign;
		this.yfid = yfid;
		this.jfdate = jfdate;
		this.yfdate = yfdate;
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

	public String getJfname() {
		return this.jfname;
	}

	public void setJfname(String jfname) {
		this.jfname = jfname;
	}

	public String getYfname() {
		return this.yfname;
	}

	public void setYfname(String yfname) {
		this.yfname = yfname;
	}

	public String getJfsign() {
		return this.jfsign;
	}

	public void setJfsign(String jfsign) {
		this.jfsign = jfsign;
	}

	public Integer getJfid() {
		return this.jfid;
	}

	public void setJfid(Integer jfid) {
		this.jfid = jfid;
	}

	public String getYfsign() {
		return this.yfsign;
	}

	public void setYfsign(String yfsign) {
		this.yfsign = yfsign;
	}

	public Integer getYfid() {
		return this.yfid;
	}

	public void setYfid(Integer yfid) {
		this.yfid = yfid;
	}

	public Date getJfdate() {
		return this.jfdate;
	}

	public void setJfdate(Date jfdate) {
		this.jfdate = jfdate;
	}

	public Date getYfdate() {
		return this.yfdate;
	}

	public void setYfdate(Date yfdate) {
		this.yfdate = yfdate;
	}

}