package com.manage.notsecretpcout.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 非涉密便携式计算机携带外出审批表
 */

public abstract class AbstractNotSecretPcOut extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String deptname;
	private Integer deptid;
	private String borrower;
	private Integer borrowerid;
	private String outplace;
	private String devicenum;
	private String diskfrom;
	private String mediumnum;
	private Integer issecret;
	private String borrowreason;
	private String borrowersign;
	private Date borrowersigndate;
	private String deptleaderopinion;
	private String deptleadersign;
	private Integer deptleaderid;
	private Date leadersigndate;
	private String devtransfer;
	private String receivesign;
	private Date receivesigndate;
	private String returncondition;
	private String checkersign;
	private Integer checkerid;
	private Date checkersigndate;
	private String devmanager;
	private Integer devmanagerid;
	private Date devmansigndate;
	private String securityopinion;
	private String securitysign;
	private Integer securityid;
	private Date securitysigndate;
	
	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
	// Property accessors

	public Date getFirstsubdate() {
		return firstsubdate;
	}

	public void setFirstsubdate(Date firstsubdate) {
		this.firstsubdate = firstsubdate;
	}

	public String getFirstperson() {
		return firstperson;
	}

	public void setFirstperson(String firstperson) {
		this.firstperson = firstperson;
	}

	public Integer getFirstpid() {
		return firstpid;
	}

	public void setFirstpid(Integer firstpid) {
		this.firstpid = firstpid;
	}


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

	
	public String getSecurityopinion() {
		return securityopinion;
	}

	public void setSecurityopinion(String securityopinion) {
		this.securityopinion = securityopinion;
	}

	public String getSecuritysign() {
		return securitysign;
	}

	public void setSecuritysign(String securitysign) {
		this.securitysign = securitysign;
	}

	public Integer getSecurityid() {
		return securityid;
	}

	public void setSecurityid(Integer securityid) {
		this.securityid = securityid;
	}

	public Date getSecuritysigndate() {
		return securitysigndate;
	}

	public void setSecuritysigndate(Date securitysigndate) {
		this.securitysigndate = securitysigndate;
	}

	public String getDeptname() {
		return deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public Integer getDeptid() {
		return deptid;
	}

	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}

	public String getBorrower() {
		return borrower;
	}

	public void setBorrower(String borrower) {
		this.borrower = borrower;
	}

	public Integer getBorrowerid() {
		return borrowerid;
	}

	public void setBorrowerid(Integer borrowerid) {
		this.borrowerid = borrowerid;
	}

	public String getOutplace() {
		return outplace;
	}

	public void setOutplace(String outplace) {
		this.outplace = outplace;
	}

	public String getDevicenum() {
		return devicenum;
	}

	public void setDevicenum(String devicenum) {
		this.devicenum = devicenum;
	}

	public String getDiskfrom() {
		return diskfrom;
	}

	public void setDiskfrom(String diskfrom) {
		this.diskfrom = diskfrom;
	}

	public String getMediumnum() {
		return mediumnum;
	}

	public void setMediumnum(String mediumnum) {
		this.mediumnum = mediumnum;
	}

	public Integer getIssecret() {
		return issecret;
	}

	public void setIssecret(Integer issecret) {
		this.issecret = issecret;
	}

	public String getBorrowreason() {
		return borrowreason;
	}

	public void setBorrowreason(String borrowreason) {
		this.borrowreason = borrowreason;
	}

	public String getBorrowersign() {
		return borrowersign;
	}

	public void setBorrowersign(String borrowersign) {
		this.borrowersign = borrowersign;
	}

	public Date getBorrowersigndate() {
		return borrowersigndate;
	}

	public void setBorrowersigndate(Date borrowersigndate) {
		this.borrowersigndate = borrowersigndate;
	}

	public String getDeptleaderopinion() {
		return deptleaderopinion;
	}

	public void setDeptleaderopinion(String deptleaderopinion) {
		this.deptleaderopinion = deptleaderopinion;
	}

	public String getDeptleadersign() {
		return deptleadersign;
	}

	public void setDeptleadersign(String deptleadersign) {
		this.deptleadersign = deptleadersign;
	}

	public Integer getDeptleaderid() {
		return deptleaderid;
	}

	public void setDeptleaderid(Integer deptleaderid) {
		this.deptleaderid = deptleaderid;
	}

	public Date getLeadersigndate() {
		return leadersigndate;
	}

	public void setLeadersigndate(Date leadersigndate) {
		this.leadersigndate = leadersigndate;
	}

	public String getDevtransfer() {
		return devtransfer;
	}

	public void setDevtransfer(String devtransfer) {
		this.devtransfer = devtransfer;
	}

	public String getReceivesign() {
		return receivesign;
	}

	public void setReceivesign(String receivesign) {
		this.receivesign = receivesign;
	}

	public Date getReceivesigndate() {
		return receivesigndate;
	}

	public void setReceivesigndate(Date receivesigndate) {
		this.receivesigndate = receivesigndate;
	}

	public String getReturncondition() {
		return returncondition;
	}

	public void setReturncondition(String returncondition) {
		this.returncondition = returncondition;
	}

	public String getCheckersign() {
		return checkersign;
	}

	public void setCheckersign(String checkersign) {
		this.checkersign = checkersign;
	}

	public Integer getCheckerid() {
		return checkerid;
	}

	public void setCheckerid(Integer checkerid) {
		this.checkerid = checkerid;
	}

	public Date getCheckersigndate() {
		return checkersigndate;
	}

	public void setCheckersigndate(Date checkersigndate) {
		this.checkersigndate = checkersigndate;
	}

	public String getDevmanager() {
		return devmanager;
	}

	public void setDevmanager(String devmanager) {
		this.devmanager = devmanager;
	}

	public Integer getDevmanagerid() {
		return devmanagerid;
	}

	public void setDevmanagerid(Integer devmanagerid) {
		this.devmanagerid = devmanagerid;
	}

	public Date getDevmansigndate() {
		return devmansigndate;
	}

	public void setDevmansigndate(Date devmansigndate) {
		this.devmansigndate = devmansigndate;
	}


}