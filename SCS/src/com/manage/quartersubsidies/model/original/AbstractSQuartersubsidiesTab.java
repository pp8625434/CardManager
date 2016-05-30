package com.manage.quartersubsidies.model.original;

import java.util.Date;

/**
 * AbstractSQuartersubsidiesTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSQuartersubsidiesTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String orgname;
	private String orgid;
	private Double sftotalamount;
	private String departmentdesc;
	private Date departmentdate;
	private String sofficedesc;
	private Integer sofficeid;
	private Date sofficedate;
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
	public AbstractSQuartersubsidiesTab() {
	}

	/** minimal constructor */
	public AbstractSQuartersubsidiesTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSQuartersubsidiesTab(Integer id, Integer version,
			String orgname, String orgid, 
			Double sftotalamount, String departmentdesc, Date departmentdate,
			String sofficedesc, Integer sofficeid, Date sofficedate,String username,Integer userid) {
		this.id = id;
		this.version = version;
		this.orgname = orgname;
		this.orgid = orgid;
		this.sftotalamount = sftotalamount;
		this.departmentdesc = departmentdesc;
		this.departmentdate = departmentdate;
		this.sofficedesc = sofficedesc;
		this.sofficeid = sofficeid;
		this.sofficedate = sofficedate;
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


	public Double getSftotalamount() {
		return this.sftotalamount;
	}

	public void setSftotalamount(Double sftotalamount) {
		this.sftotalamount = sftotalamount;
	}

	public String getDepartmentdesc() {
		return this.departmentdesc;
	}

	public void setDepartmentdesc(String departmentdesc) {
		this.departmentdesc = departmentdesc;
	}

	public Date getDepartmentdate() {
		return this.departmentdate;
	}

	public void setDepartmentdate(Date departmentdate) {
		this.departmentdate = departmentdate;
	}

	public String getSofficedesc() {
		return this.sofficedesc;
	}

	public void setSofficedesc(String sofficedesc) {
		this.sofficedesc = sofficedesc;
	}

	public Integer getSofficeid() {
		return this.sofficeid;
	}

	public void setSofficeid(Integer sofficeid) {
		this.sofficeid = sofficeid;
	}

	public Date getSofficedate() {
		return this.sofficedate;
	}

	public void setSofficedate(Date sofficedate) {
		this.sofficedate = sofficedate;
	}

}