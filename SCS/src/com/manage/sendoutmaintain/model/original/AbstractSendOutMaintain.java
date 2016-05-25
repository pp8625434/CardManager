package com.manage.sendoutmaintain.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 外来人员维修、送外维修审批表
 */

public abstract class AbstractSendOutMaintain extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String applicant;
	private Integer applicantid;
	private String devprincipal;
	private Integer devprincipalid;
	private String maintaintype;
	private String deviceindex;
	private String devicesecurity;
	private String outlanderdept;
	private Integer issignsecret1;
	private Integer isaptitude1;
	private String assignaccompan;
	private String sendoutdept;
	private Integer isremovedisk;
	private Integer issignsecret2;
	private Integer isaptitude2;
	private String assignsender;
	private String infordeptopinion;
	private String infordeptsign;
	private Integer infordeptsignid;
	private Date infordeptsigndate;
	private String deviceuser;
	private Integer deviceuserid;
	private Date divuserdate;
	private String senderreceive;
	private Integer senderid;
	private Date senderdate;
	private Date senddate;
	private Date returndate;
	private Integer issignsecret3;
	private String faultreason;
	private String processmethod;
	private String maintainresult;
	private String maintainsign;
	private Date maintainsigndate;
	private String accompansign;
	private Date accompansigndate;
	private Integer accompanid;
	private String receive;
	private Date receivedate;
	private String sendertransfer;
	private Date transferdate;
	private String remark;
	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
	
	private Integer maintainsignid;
	
	public Integer getMaintainsignid() {
		return maintainsignid;
	}
	public void setMaintainsignid(Integer maintainsignid) {
		this.maintainsignid = maintainsignid;
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

	public Date getFirstsubdate() {
		return firstsubdate;
	}

	public void setFirstsubdate(Date firstsubdate) {
		this.firstsubdate = firstsubdate;
	}

	public String getDevicesecurity() {
		return devicesecurity;
	}
	public void setDevicesecurity(String devicesecurity) {
		this.devicesecurity = devicesecurity;
	}
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public Integer getApplicantid() {
		return applicantid;
	}
	public void setApplicantid(Integer applicantid) {
		this.applicantid = applicantid;
	}
	public String getDevprincipal() {
		return devprincipal;
	}
	public void setDevprincipal(String devprincipal) {
		this.devprincipal = devprincipal;
	}
	public Integer getDevprincipalid() {
		return devprincipalid;
	}
	public void setDevprincipalid(Integer devprincipalid) {
		this.devprincipalid = devprincipalid;
	}
	public String getMaintaintype() {
		return maintaintype;
	}
	public void setMaintaintype(String maintaintype) {
		this.maintaintype = maintaintype;
	}
	public String getDeviceindex() {
		return deviceindex;
	}
	public void setDeviceindex(String deviceindex) {
		this.deviceindex = deviceindex;
	}
	public String getOutlanderdept() {
		return outlanderdept;
	}
	public void setOutlanderdept(String outlanderdept) {
		this.outlanderdept = outlanderdept;
	}
	public Integer getIssignsecret1() {
		return issignsecret1;
	}
	public void setIssignsecret1(Integer issignsecret1) {
		this.issignsecret1 = issignsecret1;
	}
	public Integer getIsaptitude1() {
		return isaptitude1;
	}
	public void setIsaptitude1(Integer isaptitude1) {
		this.isaptitude1 = isaptitude1;
	}
	public String getAssignaccompan() {
		return assignaccompan;
	}
	public void setAssignaccompan(String assignaccompan) {
		this.assignaccompan = assignaccompan;
	}
	public String getSendoutdept() {
		return sendoutdept;
	}
	public void setSendoutdept(String sendoutdept) {
		this.sendoutdept = sendoutdept;
	}
	public Integer getIsremovedisk() {
		return isremovedisk;
	}
	public void setIsremovedisk(Integer isremovedisk) {
		this.isremovedisk = isremovedisk;
	}
	public Integer getIssignsecret2() {
		return issignsecret2;
	}
	public void setIssignsecret2(Integer issignsecret2) {
		this.issignsecret2 = issignsecret2;
	}
	public Integer getIsaptitude2() {
		return isaptitude2;
	}
	public void setIsaptitude2(Integer isaptitude2) {
		this.isaptitude2 = isaptitude2;
	}
	public String getAssignsender() {
		return assignsender;
	}
	public void setAssignsender(String assignsender) {
		this.assignsender = assignsender;
	}
	public String getInfordeptopinion() {
		return infordeptopinion;
	}
	public void setInfordeptopinion(String infordeptopinion) {
		this.infordeptopinion = infordeptopinion;
	}
	public String getInfordeptsign() {
		return infordeptsign;
	}
	public void setInfordeptsign(String infordeptsign) {
		this.infordeptsign = infordeptsign;
	}
	public Integer getInfordeptsignid() {
		return infordeptsignid;
	}
	public void setInfordeptsignid(Integer infordeptsignid) {
		this.infordeptsignid = infordeptsignid;
	}
	public Date getInfordeptsigndate() {
		return infordeptsigndate;
	}
	public void setInfordeptsigndate(Date infordeptsigndate) {
		this.infordeptsigndate = infordeptsigndate;
	}
	public String getDeviceuser() {
		return deviceuser;
	}
	public void setDeviceuser(String deviceuser) {
		this.deviceuser = deviceuser;
	}
	public Integer getDeviceuserid() {
		return deviceuserid;
	}
	public void setDeviceuserid(Integer deviceuserid) {
		this.deviceuserid = deviceuserid;
	}
	public Date getDivuserdate() {
		return divuserdate;
	}
	public void setDivuserdate(Date divuserdate) {
		this.divuserdate = divuserdate;
	}
	public String getSenderreceive() {
		return senderreceive;
	}
	public void setSenderreceive(String senderreceive) {
		this.senderreceive = senderreceive;
	}
	public Integer getSenderid() {
		return senderid;
	}
	public void setSenderid(Integer senderid) {
		this.senderid = senderid;
	}
	public Date getSenderdate() {
		return senderdate;
	}
	public void setSenderdate(Date senderdate) {
		this.senderdate = senderdate;
	}
	public Date getSenddate() {
		return senddate;
	}
	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}
	public Date getReturndate() {
		return returndate;
	}
	public void setReturndate(Date returndate) {
		this.returndate = returndate;
	}
	public Integer getIssignsecret3() {
		return issignsecret3;
	}
	public void setIssignsecret3(Integer issignsecret3) {
		this.issignsecret3 = issignsecret3;
	}
	public String getFaultreason() {
		return faultreason;
	}
	public void setFaultreason(String faultreason) {
		this.faultreason = faultreason;
	}
	public String getProcessmethod() {
		return processmethod;
	}
	public void setProcessmethod(String processmethod) {
		this.processmethod = processmethod;
	}
	public String getMaintainresult() {
		return maintainresult;
	}
	public void setMaintainresult(String maintainresult) {
		this.maintainresult = maintainresult;
	}
	public String getMaintainsign() {
		return maintainsign;
	}
	public void setMaintainsign(String maintainsign) {
		this.maintainsign = maintainsign;
	}
	public Date getMaintainsigndate() {
		return maintainsigndate;
	}
	public void setMaintainsigndate(Date maintainsigndate) {
		this.maintainsigndate = maintainsigndate;
	}
	public String getAccompansign() {
		return accompansign;
	}
	public void setAccompansign(String accompansign) {
		this.accompansign = accompansign;
	}
	public Date getAccompansigndate() {
		return accompansigndate;
	}
	public void setAccompansigndate(Date accompansigndate) {
		this.accompansigndate = accompansigndate;
	}
	public Integer getAccompanid() {
		return accompanid;
	}
	public void setAccompanid(Integer accompanid) {
		this.accompanid = accompanid;
	}
	public String getReceive() {
		return receive;
	}
	public void setReceive(String receive) {
		this.receive = receive;
	}
	public Date getReceivedate() {
		return receivedate;
	}
	public void setReceivedate(Date receivedate) {
		this.receivedate = receivedate;
	}
	public String getSendertransfer() {
		return sendertransfer;
	}
	public void setSendertransfer(String sendertransfer) {
		this.sendertransfer = sendertransfer;
	}
	public Date getTransferdate() {
		return transferdate;
	}
	public void setTransferdate(Date transferdate) {
		this.transferdate = transferdate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}