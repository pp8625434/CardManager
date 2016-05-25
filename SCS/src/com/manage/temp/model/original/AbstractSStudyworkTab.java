package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractSStudyworkTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSStudyworkTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String eqid;
	private Date wstartdate;
	private Date wenddate;
	private String workunit;
	private String jobs;
	private String position;
	private String zmname;

	// Constructors

	/** default constructor */
	public AbstractSStudyworkTab() {
	}

	/** minimal constructor */
	public AbstractSStudyworkTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSStudyworkTab(Integer id, Integer version, String eqid,
			Date wstartdate, Date wenddate, String workunit, String jobs,
			String position, String zmname) {
		this.id = id;
		this.version = version;
		this.eqid = eqid;
		this.wstartdate = wstartdate;
		this.wenddate = wenddate;
		this.workunit = workunit;
		this.jobs = jobs;
		this.position = position;
		this.zmname = zmname;
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

	public String getEqid() {
		return this.eqid;
	}

	public void setEqid(String eqid) {
		this.eqid = eqid;
	}

	public Date getWstartdate() {
		return this.wstartdate;
	}

	public void setWstartdate(Date wstartdate) {
		this.wstartdate = wstartdate;
	}

	public Date getWenddate() {
		return this.wenddate;
	}

	public void setWenddate(Date wenddate) {
		this.wenddate = wenddate;
	}

	public String getWorkunit() {
		return this.workunit;
	}

	public void setWorkunit(String workunit) {
		this.workunit = workunit;
	}

	public String getJobs() {
		return this.jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getZmname() {
		return this.zmname;
	}

	public void setZmname(String zmname) {
		this.zmname = zmname;
	}

}