package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractSFilmingactivityTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSFilmingactivityTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String orgname;
	private String orgid;
	private String shead;
	private String purpose;
	private String shootrange;
	private Date shootdate;
	private Integer isclassification;
	private String classification;
	private String cameras;
	private String monitors;
	private String trackrecord;
	private String depdesc;
	private String depsign;
	private Integer depid;
	private Date depdate;
	private String partdesc;
	private String partsign;
	private Integer partid;
	private Date partdate;
	private String officedesc;
	private String officesign;
	private Integer officeid;
	private Date officedate;
	private String scomdesc;
	private String scomsign;
	private Integer scomid;
	private Date scomdate;
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
	public AbstractSFilmingactivityTab() {
	}

	/** minimal constructor */
	public AbstractSFilmingactivityTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSFilmingactivityTab(Integer id, Integer version,
			String orgname, String orgid, String shead, String purpose,
			String shootrange, Date shootdate, Integer isclassification,
			String classification, String cameras, String monitors,
			String trackrecord, String depdesc, String depsign, Integer depid,
			Date depdate, String partdesc, String partsign, Integer partid,
			Date partdate, String officedesc, String officesign,
			Integer officeid, Date officedate, String scomdesc,
			String scomsign, Integer scomid, Date scomdate) {
		this.id = id;
		this.version = version;
		this.orgname = orgname;
		this.orgid = orgid;
		this.shead = shead;
		this.purpose = purpose;
		this.shootrange = shootrange;
		this.shootdate = shootdate;
		this.isclassification = isclassification;
		this.classification = classification;
		this.cameras = cameras;
		this.monitors = monitors;
		this.trackrecord = trackrecord;
		this.depdesc = depdesc;
		this.depsign = depsign;
		this.depid = depid;
		this.depdate = depdate;
		this.partdesc = partdesc;
		this.partsign = partsign;
		this.partid = partid;
		this.partdate = partdate;
		this.officedesc = officedesc;
		this.officesign = officesign;
		this.officeid = officeid;
		this.officedate = officedate;
		this.scomdesc = scomdesc;
		this.scomsign = scomsign;
		this.scomid = scomid;
		this.scomdate = scomdate;
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

	public String getShead() {
		return this.shead;
	}

	public void setShead(String shead) {
		this.shead = shead;
	}

	public String getPurpose() {
		return this.purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getShootrange() {
		return this.shootrange;
	}

	public void setShootrange(String shootrange) {
		this.shootrange = shootrange;
	}

	public Date getShootdate() {
		return this.shootdate;
	}

	public void setShootdate(Date shootdate) {
		this.shootdate = shootdate;
	}

	public Integer getIsclassification() {
		return this.isclassification;
	}

	public void setIsclassification(Integer isclassification) {
		this.isclassification = isclassification;
	}

	public String getClassification() {
		return this.classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getCameras() {
		return this.cameras;
	}

	public void setCameras(String cameras) {
		this.cameras = cameras;
	}

	public String getMonitors() {
		return this.monitors;
	}

	public void setMonitors(String monitors) {
		this.monitors = monitors;
	}

	public String getTrackrecord() {
		return this.trackrecord;
	}

	public void setTrackrecord(String trackrecord) {
		this.trackrecord = trackrecord;
	}

	public String getDepdesc() {
		return this.depdesc;
	}

	public void setDepdesc(String depdesc) {
		this.depdesc = depdesc;
	}

	public String getDepsign() {
		return this.depsign;
	}

	public void setDepsign(String depsign) {
		this.depsign = depsign;
	}

	public Integer getDepid() {
		return this.depid;
	}

	public void setDepid(Integer depid) {
		this.depid = depid;
	}

	public Date getDepdate() {
		return this.depdate;
	}

	public void setDepdate(Date depdate) {
		this.depdate = depdate;
	}

	public String getPartdesc() {
		return this.partdesc;
	}

	public void setPartdesc(String partdesc) {
		this.partdesc = partdesc;
	}

	public String getPartsign() {
		return this.partsign;
	}

	public void setPartsign(String partsign) {
		this.partsign = partsign;
	}

	public Integer getPartid() {
		return this.partid;
	}

	public void setPartid(Integer partid) {
		this.partid = partid;
	}

	public Date getPartdate() {
		return this.partdate;
	}

	public void setPartdate(Date partdate) {
		this.partdate = partdate;
	}

	public String getOfficedesc() {
		return this.officedesc;
	}

	public void setOfficedesc(String officedesc) {
		this.officedesc = officedesc;
	}

	public String getOfficesign() {
		return this.officesign;
	}

	public void setOfficesign(String officesign) {
		this.officesign = officesign;
	}

	public Integer getOfficeid() {
		return this.officeid;
	}

	public void setOfficeid(Integer officeid) {
		this.officeid = officeid;
	}

	public Date getOfficedate() {
		return this.officedate;
	}

	public void setOfficedate(Date officedate) {
		this.officedate = officedate;
	}

	public String getScomdesc() {
		return this.scomdesc;
	}

	public void setScomdesc(String scomdesc) {
		this.scomdesc = scomdesc;
	}

	public String getScomsign() {
		return this.scomsign;
	}

	public void setScomsign(String scomsign) {
		this.scomsign = scomsign;
	}

	public Integer getScomid() {
		return this.scomid;
	}

	public void setScomid(Integer scomid) {
		this.scomid = scomid;
	}

	public Date getScomdate() {
		return this.scomdate;
	}

	public void setScomdate(Date scomdate) {
		this.scomdate = scomdate;
	}

}