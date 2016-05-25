package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractADevicepurchaseTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractADevicepurchaseTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String applydept;
	private Integer applydeptid;
	private Date applydate;
	private String purchasereason;
	private String deptopinion;
	private String deptsign;
	private Integer deptsignid;
	private Date signdate;

	// Constructors

	/** default constructor */
	public AbstractADevicepurchaseTab() {
	}

	/** minimal constructor */
	public AbstractADevicepurchaseTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractADevicepurchaseTab(Integer id, Integer version,
			String applydept, Integer applydeptid, Date applydate,
			String purchasereason, String deptopinion,
			String deptsign, Integer deptsignid, Date signdate) {
		this.id = id;
		this.version = version;
		this.applydept = applydept;
		this.applydeptid = applydeptid;
		this.applydate = applydate;
		this.purchasereason = purchasereason;
		this.deptopinion = deptopinion;
		this.deptsign = deptsign;
		this.deptsignid = deptsignid;
		this.signdate = signdate;
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

	public String getApplydept() {
		return this.applydept;
	}

	public void setApplydept(String applydept) {
		this.applydept = applydept;
	}

	public Integer getApplydeptid() {
		return this.applydeptid;
	}

	public void setApplydeptid(Integer applydeptid) {
		this.applydeptid = applydeptid;
	}

	public Date getApplydate() {
		return this.applydate;
	}

	public void setApplydate(Date applydate) {
		this.applydate = applydate;
	}


	public String getPurchasereason() {
		return this.purchasereason;
	}

	public void setPurchasereason(String purchasereason) {
		this.purchasereason = purchasereason;
	}

	public String getDeptopinion() {
		return this.deptopinion;
	}

	public void setDeptopinion(String deptopinion) {
		this.deptopinion = deptopinion;
	}

	public String getDeptsign() {
		return this.deptsign;
	}

	public void setDeptsign(String deptsign) {
		this.deptsign = deptsign;
	}

	public Integer getDeptsignid() {
		return this.deptsignid;
	}

	public void setDeptsignid(Integer deptsignid) {
		this.deptsignid = deptsignid;
	}

	public Date getSigndate() {
		return this.signdate;
	}

	public void setSigndate(Date signdate) {
		this.signdate = signdate;
	}

}