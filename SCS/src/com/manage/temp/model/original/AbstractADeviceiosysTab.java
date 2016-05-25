package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractADeviceiosysTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractADeviceiosysTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String applicant;
	private Integer applicantid;
	private String cellphone;
	private Date appliydate;
	private Integer applicanttype;
	private String applicantelse;
	private Integer type;
	private Integer applicantsecurity;
	private String orgname;
	private String orgid;
	private Integer devicetype;
	private String deviceelse;
	private String deviceindex;
	private String hardpanserialnum;
	private Integer devicesecurity;
	private String storageplace;
	private String insysname;
	private String outsysname;
	private Integer insysreason;
	private String inreasonelse;
	private Integer outsysreason;
	private String outreasonelse;
	private String applydeptopinion;
	private String applydeptsign;
	private Integer applydeptsignid;
	private Date applydeptsigndate;
	private String infordeptopinion;
	private String infordeptsign;
	private Integer infordeptsignid;
	private Date infordeptsigndate;
	private String devprincipalsign;
	private Integer devprincipalid;
	private Date devprincipalsigndate;
	private String devrecipientsign;
	private Integer devrecipientid;
	private Date devrecipientsigndate;
	private Integer isclearinformation;
	private Integer isremovefirmware;
	private Integer istransferdevice;
	private String operatorsign;
	private Integer operatorid;
	private Date operatorsigndate;
	private String storeinforecipient;
	private Integer storeinforecipientid;
	private String allocationip;
	private String closeip;
	private Integer switchboard;
	private String switchboardname;
	private String switchboardsign;
	private Integer switchboardsignid;
	private Date switchboarddate;
	private Integer isoa;
	private String oaoperatorsign;
	private Integer oaoperatorid;
	private Date oaoperatordate;
	private String domainemail;
	private String domainoperator;
	private Integer domainoperatorid;
	private Date domaindate;
	private Integer isupdate;
	private Integer isinform;
	private Integer isrecord;
	private String recordorsign;
	private Integer recordorid;
	private String managersign;
	private Integer managerid;
	private Date managersigndate;

	// Constructors

	/** default constructor */
	public AbstractADeviceiosysTab() {
	}

	/** minimal constructor */
	public AbstractADeviceiosysTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractADeviceiosysTab(Integer id, Integer version,
			String applicant, Integer applicantid, String cellphone,
			Date appliydate, Integer applicanttype, String applicantelse,
			Integer type, Integer applicantsecurity, String orgname,
			String orgid, Integer devicetype, String deviceelse,
			String deviceindex, String hardpanserialnum,
			Integer devicesecurity, String storageplace, String insysname,
			String outsysname, Integer insysreason, String inreasonelse,
			Integer outsysreason, String outreasonelse,
			String applydeptopinion, String applydeptsign,
			Integer applydeptsignid, Date applydeptsigndate,
			String infordeptopinion, String infordeptsign,
			Integer infordeptsignid, Date infordeptsigndate,
			String devprincipalsign, Integer devprincipalid,
			Date devprincipalsigndate, String devrecipientsign,
			Integer devrecipientid, Date devrecipientsigndate,
			Integer isclearinformation, Integer isremovefirmware,
			Integer istransferdevice, String operatorsign, Integer operatorid,
			Date operatorsigndate, String storeinforecipient,
			Integer storeinforecipientid, String allocationip, String closeip,
			Integer switchboard, String switchboardname,
			String switchboardsign, Integer switchboardsignid,
			Date switchboarddate, Integer isoa, String oaoperatorsign,
			Integer oaoperatorid, Date oaoperatordate, String domainemail,
			String domainoperator, Integer domainoperatorid, Date domaindate,
			Integer isupdate, Integer isinform, Integer isrecord,
			String recordorsign, Integer recordorid, String managersign,
			Integer managerid, Date managersigndate) {
		this.id = id;
		this.version = version;
		this.applicant = applicant;
		this.applicantid = applicantid;
		this.cellphone = cellphone;
		this.appliydate = appliydate;
		this.applicanttype = applicanttype;
		this.applicantelse = applicantelse;
		this.type = type;
		this.applicantsecurity = applicantsecurity;
		this.orgname = orgname;
		this.orgid = orgid;
		this.devicetype = devicetype;
		this.deviceelse = deviceelse;
		this.deviceindex = deviceindex;
		this.hardpanserialnum = hardpanserialnum;
		this.devicesecurity = devicesecurity;
		this.storageplace = storageplace;
		this.insysname = insysname;
		this.outsysname = outsysname;
		this.insysreason = insysreason;
		this.inreasonelse = inreasonelse;
		this.outsysreason = outsysreason;
		this.outreasonelse = outreasonelse;
		this.applydeptopinion = applydeptopinion;
		this.applydeptsign = applydeptsign;
		this.applydeptsignid = applydeptsignid;
		this.applydeptsigndate = applydeptsigndate;
		this.infordeptopinion = infordeptopinion;
		this.infordeptsign = infordeptsign;
		this.infordeptsignid = infordeptsignid;
		this.infordeptsigndate = infordeptsigndate;
		this.devprincipalsign = devprincipalsign;
		this.devprincipalid = devprincipalid;
		this.devprincipalsigndate = devprincipalsigndate;
		this.devrecipientsign = devrecipientsign;
		this.devrecipientid = devrecipientid;
		this.devrecipientsigndate = devrecipientsigndate;
		this.isclearinformation = isclearinformation;
		this.isremovefirmware = isremovefirmware;
		this.istransferdevice = istransferdevice;
		this.operatorsign = operatorsign;
		this.operatorid = operatorid;
		this.operatorsigndate = operatorsigndate;
		this.storeinforecipient = storeinforecipient;
		this.storeinforecipientid = storeinforecipientid;
		this.allocationip = allocationip;
		this.closeip = closeip;
		this.switchboard = switchboard;
		this.switchboardname = switchboardname;
		this.switchboardsign = switchboardsign;
		this.switchboardsignid = switchboardsignid;
		this.switchboarddate = switchboarddate;
		this.isoa = isoa;
		this.oaoperatorsign = oaoperatorsign;
		this.oaoperatorid = oaoperatorid;
		this.oaoperatordate = oaoperatordate;
		this.domainemail = domainemail;
		this.domainoperator = domainoperator;
		this.domainoperatorid = domainoperatorid;
		this.domaindate = domaindate;
		this.isupdate = isupdate;
		this.isinform = isinform;
		this.isrecord = isrecord;
		this.recordorsign = recordorsign;
		this.recordorid = recordorid;
		this.managersign = managersign;
		this.managerid = managerid;
		this.managersigndate = managersigndate;
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

	public String getApplicant() {
		return this.applicant;
	}

	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}

	public Integer getApplicantid() {
		return this.applicantid;
	}

	public void setApplicantid(Integer applicantid) {
		this.applicantid = applicantid;
	}

	public String getCellphone() {
		return this.cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public Date getAppliydate() {
		return this.appliydate;
	}

	public void setAppliydate(Date appliydate) {
		this.appliydate = appliydate;
	}

	public Integer getApplicanttype() {
		return this.applicanttype;
	}

	public void setApplicanttype(Integer applicanttype) {
		this.applicanttype = applicanttype;
	}

	public String getApplicantelse() {
		return this.applicantelse;
	}

	public void setApplicantelse(String applicantelse) {
		this.applicantelse = applicantelse;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getApplicantsecurity() {
		return this.applicantsecurity;
	}

	public void setApplicantsecurity(Integer applicantsecurity) {
		this.applicantsecurity = applicantsecurity;
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

	public Integer getDevicetype() {
		return this.devicetype;
	}

	public void setDevicetype(Integer devicetype) {
		this.devicetype = devicetype;
	}

	public String getDeviceelse() {
		return this.deviceelse;
	}

	public void setDeviceelse(String deviceelse) {
		this.deviceelse = deviceelse;
	}

	public String getDeviceindex() {
		return this.deviceindex;
	}

	public void setDeviceindex(String deviceindex) {
		this.deviceindex = deviceindex;
	}

	public String getHardpanserialnum() {
		return this.hardpanserialnum;
	}

	public void setHardpanserialnum(String hardpanserialnum) {
		this.hardpanserialnum = hardpanserialnum;
	}

	public Integer getDevicesecurity() {
		return this.devicesecurity;
	}

	public void setDevicesecurity(Integer devicesecurity) {
		this.devicesecurity = devicesecurity;
	}

	public String getStorageplace() {
		return this.storageplace;
	}

	public void setStorageplace(String storageplace) {
		this.storageplace = storageplace;
	}

	public String getInsysname() {
		return this.insysname;
	}

	public void setInsysname(String insysname) {
		this.insysname = insysname;
	}

	public String getOutsysname() {
		return this.outsysname;
	}

	public void setOutsysname(String outsysname) {
		this.outsysname = outsysname;
	}

	public Integer getInsysreason() {
		return this.insysreason;
	}

	public void setInsysreason(Integer insysreason) {
		this.insysreason = insysreason;
	}

	public String getInreasonelse() {
		return this.inreasonelse;
	}

	public void setInreasonelse(String inreasonelse) {
		this.inreasonelse = inreasonelse;
	}

	public Integer getOutsysreason() {
		return this.outsysreason;
	}

	public void setOutsysreason(Integer outsysreason) {
		this.outsysreason = outsysreason;
	}

	public String getOutreasonelse() {
		return this.outreasonelse;
	}

	public void setOutreasonelse(String outreasonelse) {
		this.outreasonelse = outreasonelse;
	}

	public String getApplydeptopinion() {
		return this.applydeptopinion;
	}

	public void setApplydeptopinion(String applydeptopinion) {
		this.applydeptopinion = applydeptopinion;
	}

	public String getApplydeptsign() {
		return this.applydeptsign;
	}

	public void setApplydeptsign(String applydeptsign) {
		this.applydeptsign = applydeptsign;
	}

	public Integer getApplydeptsignid() {
		return this.applydeptsignid;
	}

	public void setApplydeptsignid(Integer applydeptsignid) {
		this.applydeptsignid = applydeptsignid;
	}

	public Date getApplydeptsigndate() {
		return this.applydeptsigndate;
	}

	public void setApplydeptsigndate(Date applydeptsigndate) {
		this.applydeptsigndate = applydeptsigndate;
	}

	public String getInfordeptopinion() {
		return this.infordeptopinion;
	}

	public void setInfordeptopinion(String infordeptopinion) {
		this.infordeptopinion = infordeptopinion;
	}

	public String getInfordeptsign() {
		return this.infordeptsign;
	}

	public void setInfordeptsign(String infordeptsign) {
		this.infordeptsign = infordeptsign;
	}

	public Integer getInfordeptsignid() {
		return this.infordeptsignid;
	}

	public void setInfordeptsignid(Integer infordeptsignid) {
		this.infordeptsignid = infordeptsignid;
	}

	public Date getInfordeptsigndate() {
		return this.infordeptsigndate;
	}

	public void setInfordeptsigndate(Date infordeptsigndate) {
		this.infordeptsigndate = infordeptsigndate;
	}

	public String getDevprincipalsign() {
		return this.devprincipalsign;
	}

	public void setDevprincipalsign(String devprincipalsign) {
		this.devprincipalsign = devprincipalsign;
	}

	public Integer getDevprincipalid() {
		return this.devprincipalid;
	}

	public void setDevprincipalid(Integer devprincipalid) {
		this.devprincipalid = devprincipalid;
	}

	public Date getDevprincipalsigndate() {
		return this.devprincipalsigndate;
	}

	public void setDevprincipalsigndate(Date devprincipalsigndate) {
		this.devprincipalsigndate = devprincipalsigndate;
	}

	public String getDevrecipientsign() {
		return this.devrecipientsign;
	}

	public void setDevrecipientsign(String devrecipientsign) {
		this.devrecipientsign = devrecipientsign;
	}

	public Integer getDevrecipientid() {
		return this.devrecipientid;
	}

	public void setDevrecipientid(Integer devrecipientid) {
		this.devrecipientid = devrecipientid;
	}

	public Date getDevrecipientsigndate() {
		return this.devrecipientsigndate;
	}

	public void setDevrecipientsigndate(Date devrecipientsigndate) {
		this.devrecipientsigndate = devrecipientsigndate;
	}

	public Integer getIsclearinformation() {
		return this.isclearinformation;
	}

	public void setIsclearinformation(Integer isclearinformation) {
		this.isclearinformation = isclearinformation;
	}

	public Integer getIsremovefirmware() {
		return this.isremovefirmware;
	}

	public void setIsremovefirmware(Integer isremovefirmware) {
		this.isremovefirmware = isremovefirmware;
	}

	public Integer getIstransferdevice() {
		return this.istransferdevice;
	}

	public void setIstransferdevice(Integer istransferdevice) {
		this.istransferdevice = istransferdevice;
	}

	public String getOperatorsign() {
		return this.operatorsign;
	}

	public void setOperatorsign(String operatorsign) {
		this.operatorsign = operatorsign;
	}

	public Integer getOperatorid() {
		return this.operatorid;
	}

	public void setOperatorid(Integer operatorid) {
		this.operatorid = operatorid;
	}

	public Date getOperatorsigndate() {
		return this.operatorsigndate;
	}

	public void setOperatorsigndate(Date operatorsigndate) {
		this.operatorsigndate = operatorsigndate;
	}

	public String getStoreinforecipient() {
		return this.storeinforecipient;
	}

	public void setStoreinforecipient(String storeinforecipient) {
		this.storeinforecipient = storeinforecipient;
	}

	public Integer getStoreinforecipientid() {
		return this.storeinforecipientid;
	}

	public void setStoreinforecipientid(Integer storeinforecipientid) {
		this.storeinforecipientid = storeinforecipientid;
	}

	public String getAllocationip() {
		return this.allocationip;
	}

	public void setAllocationip(String allocationip) {
		this.allocationip = allocationip;
	}

	public String getCloseip() {
		return this.closeip;
	}

	public void setCloseip(String closeip) {
		this.closeip = closeip;
	}

	public Integer getSwitchboard() {
		return this.switchboard;
	}

	public void setSwitchboard(Integer switchboard) {
		this.switchboard = switchboard;
	}

	public String getSwitchboardname() {
		return this.switchboardname;
	}

	public void setSwitchboardname(String switchboardname) {
		this.switchboardname = switchboardname;
	}

	public String getSwitchboardsign() {
		return this.switchboardsign;
	}

	public void setSwitchboardsign(String switchboardsign) {
		this.switchboardsign = switchboardsign;
	}

	public Integer getSwitchboardsignid() {
		return this.switchboardsignid;
	}

	public void setSwitchboardsignid(Integer switchboardsignid) {
		this.switchboardsignid = switchboardsignid;
	}

	public Date getSwitchboarddate() {
		return this.switchboarddate;
	}

	public void setSwitchboarddate(Date switchboarddate) {
		this.switchboarddate = switchboarddate;
	}

	public Integer getIsoa() {
		return this.isoa;
	}

	public void setIsoa(Integer isoa) {
		this.isoa = isoa;
	}

	public String getOaoperatorsign() {
		return this.oaoperatorsign;
	}

	public void setOaoperatorsign(String oaoperatorsign) {
		this.oaoperatorsign = oaoperatorsign;
	}

	public Integer getOaoperatorid() {
		return this.oaoperatorid;
	}

	public void setOaoperatorid(Integer oaoperatorid) {
		this.oaoperatorid = oaoperatorid;
	}

	public Date getOaoperatordate() {
		return this.oaoperatordate;
	}

	public void setOaoperatordate(Date oaoperatordate) {
		this.oaoperatordate = oaoperatordate;
	}

	public String getDomainemail() {
		return this.domainemail;
	}

	public void setDomainemail(String domainemail) {
		this.domainemail = domainemail;
	}

	public String getDomainoperator() {
		return this.domainoperator;
	}

	public void setDomainoperator(String domainoperator) {
		this.domainoperator = domainoperator;
	}

	public Integer getDomainoperatorid() {
		return this.domainoperatorid;
	}

	public void setDomainoperatorid(Integer domainoperatorid) {
		this.domainoperatorid = domainoperatorid;
	}

	public Date getDomaindate() {
		return this.domaindate;
	}

	public void setDomaindate(Date domaindate) {
		this.domaindate = domaindate;
	}

	public Integer getIsupdate() {
		return this.isupdate;
	}

	public void setIsupdate(Integer isupdate) {
		this.isupdate = isupdate;
	}

	public Integer getIsinform() {
		return this.isinform;
	}

	public void setIsinform(Integer isinform) {
		this.isinform = isinform;
	}

	public Integer getIsrecord() {
		return this.isrecord;
	}

	public void setIsrecord(Integer isrecord) {
		this.isrecord = isrecord;
	}

	public String getRecordorsign() {
		return this.recordorsign;
	}

	public void setRecordorsign(String recordorsign) {
		this.recordorsign = recordorsign;
	}

	public Integer getRecordorid() {
		return this.recordorid;
	}

	public void setRecordorid(Integer recordorid) {
		this.recordorid = recordorid;
	}

	public String getManagersign() {
		return this.managersign;
	}

	public void setManagersign(String managersign) {
		this.managersign = managersign;
	}

	public Integer getManagerid() {
		return this.managerid;
	}

	public void setManagerid(Integer managerid) {
		this.managerid = managerid;
	}

	public Date getManagersigndate() {
		return this.managersigndate;
	}

	public void setManagersigndate(Date managersigndate) {
		this.managersigndate = managersigndate;
	}

}