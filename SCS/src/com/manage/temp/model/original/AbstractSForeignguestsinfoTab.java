package com.manage.temp.model.original;

/**
 * AbstractSForeignguestsinfoTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSForeignguestsinfoTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Integer oaid;
	private String cname;
	private String ename;
	private String nationality;
	private String passportno;
	private String duties;
	private Integer comenum;
	private String remark;

	// Constructors

	/** default constructor */
	public AbstractSForeignguestsinfoTab() {
	}

	/** minimal constructor */
	public AbstractSForeignguestsinfoTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSForeignguestsinfoTab(Integer id, Integer version,
			Integer oaid, String cname, String ename, String nationality,
			String passportno, String duties, Integer comenum, String remark) {
		this.id = id;
		this.version = version;
		this.oaid = oaid;
		this.cname = cname;
		this.ename = ename;
		this.nationality = nationality;
		this.passportno = passportno;
		this.duties = duties;
		this.comenum = comenum;
		this.remark = remark;
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

	public Integer getOaid() {
		return this.oaid;
	}

	public void setOaid(Integer oaid) {
		this.oaid = oaid;
	}

	public String getCname() {
		return this.cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getEname() {
		return this.ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getPassportno() {
		return this.passportno;
	}

	public void setPassportno(String passportno) {
		this.passportno = passportno;
	}

	public String getDuties() {
		return this.duties;
	}

	public void setDuties(String duties) {
		this.duties = duties;
	}

	public Integer getComenum() {
		return this.comenum;
	}

	public void setComenum(Integer comenum) {
		this.comenum = comenum;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}