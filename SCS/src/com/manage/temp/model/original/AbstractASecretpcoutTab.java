package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractASecretpcoutTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractASecretpcoutTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String deptname;
	private Integer deptid;
	private String user;
	private String outplace;
	private String devicenum;
	private Integer devicesecurity;
	private Integer iscontentsecret;
	private String diskfrom;
	private String mediumnum;
	private Integer mediumsecurity;
	private String impboxnum;
	private Integer impboxsecurity;
	private String borrowreason;
	private String applyopenport;
	private String applyinstallsoft;
	private String usersign;
	private Integer userid;
	private Date usersigndate;
	private String deptleaderopinion;
	private String deptleadersign;
	private Integer deptleaderid;
	private Date leadersigndate;
	private Integer isupdate;
	private String updateversion;
	private String openport;
	private String installsoft;
	private String operator1;
	private Integer operatorid1;
	private Date operatordate1;
	private String receiver;
	private Integer receiverid;
	private Date receiverdate;
	private String checkcondition;
	private String transfersign;
	private Integer transferid;
	private String checkersign;
	private Integer checkerid;
	private Date checkersigndate;
	private String portcondition;
	private String operator2;
	private Integer operatorid2;
	private Date operatordate2;
	private String securityopinion;
	private String securitysign;
	private Integer securityid;
	private Date securitysigndate;

	// Constructors

	/** default constructor */
	public AbstractASecretpcoutTab() {
	}

	/** minimal constructor */
	public AbstractASecretpcoutTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractASecretpcoutTab(Integer id, Integer version,
			String deptname, Integer deptid, String user, String outplace,
			String devicenum, Integer devicesecurity, Integer iscontentsecret,
			String diskfrom, String mediumnum, Integer mediumsecurity,
			String impboxnum, Integer impboxsecurity, String borrowreason,
			String applyopenport, String applyinstallsoft, String usersign,
			Integer userid, Date usersigndate, String deptleaderopinion,
			String deptleadersign, Integer deptleaderid, Date leadersigndate,
			Integer isupdate, String updateversion, String openport,
			String installsoft, String operator1, Integer operatorid1,
			Date operatordate1, String receiver, Integer receiverid,
			Date receiverdate, String checkcondition, String transfersign,
			Integer transferid, String checkersign, Integer checkerid,
			Date checkersigndate, String portcondition, String operator2,
			Integer operatorid2, Date operatordate2, String securityopinion,
			String securitysign, Integer securityid, Date securitysigndate) {
		this.id = id;
		this.version = version;
		this.deptname = deptname;
		this.deptid = deptid;
		this.user = user;
		this.outplace = outplace;
		this.devicenum = devicenum;
		this.devicesecurity = devicesecurity;
		this.iscontentsecret = iscontentsecret;
		this.diskfrom = diskfrom;
		this.mediumnum = mediumnum;
		this.mediumsecurity = mediumsecurity;
		this.impboxnum = impboxnum;
		this.impboxsecurity = impboxsecurity;
		this.borrowreason = borrowreason;
		this.applyopenport = applyopenport;
		this.applyinstallsoft = applyinstallsoft;
		this.usersign = usersign;
		this.userid = userid;
		this.usersigndate = usersigndate;
		this.deptleaderopinion = deptleaderopinion;
		this.deptleadersign = deptleadersign;
		this.deptleaderid = deptleaderid;
		this.leadersigndate = leadersigndate;
		this.isupdate = isupdate;
		this.updateversion = updateversion;
		this.openport = openport;
		this.installsoft = installsoft;
		this.operator1 = operator1;
		this.operatorid1 = operatorid1;
		this.operatordate1 = operatordate1;
		this.receiver = receiver;
		this.receiverid = receiverid;
		this.receiverdate = receiverdate;
		this.checkcondition = checkcondition;
		this.transfersign = transfersign;
		this.transferid = transferid;
		this.checkersign = checkersign;
		this.checkerid = checkerid;
		this.checkersigndate = checkersigndate;
		this.portcondition = portcondition;
		this.operator2 = operator2;
		this.operatorid2 = operatorid2;
		this.operatordate2 = operatordate2;
		this.securityopinion = securityopinion;
		this.securitysign = securitysign;
		this.securityid = securityid;
		this.securitysigndate = securitysigndate;
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

	public String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public Integer getDeptid() {
		return this.deptid;
	}

	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getOutplace() {
		return this.outplace;
	}

	public void setOutplace(String outplace) {
		this.outplace = outplace;
	}

	public String getDevicenum() {
		return this.devicenum;
	}

	public void setDevicenum(String devicenum) {
		this.devicenum = devicenum;
	}

	public Integer getDevicesecurity() {
		return this.devicesecurity;
	}

	public void setDevicesecurity(Integer devicesecurity) {
		this.devicesecurity = devicesecurity;
	}

	public Integer getIscontentsecret() {
		return this.iscontentsecret;
	}

	public void setIscontentsecret(Integer iscontentsecret) {
		this.iscontentsecret = iscontentsecret;
	}

	public String getDiskfrom() {
		return this.diskfrom;
	}

	public void setDiskfrom(String diskfrom) {
		this.diskfrom = diskfrom;
	}

	public String getMediumnum() {
		return this.mediumnum;
	}

	public void setMediumnum(String mediumnum) {
		this.mediumnum = mediumnum;
	}

	public Integer getMediumsecurity() {
		return this.mediumsecurity;
	}

	public void setMediumsecurity(Integer mediumsecurity) {
		this.mediumsecurity = mediumsecurity;
	}

	public String getImpboxnum() {
		return this.impboxnum;
	}

	public void setImpboxnum(String impboxnum) {
		this.impboxnum = impboxnum;
	}

	public Integer getImpboxsecurity() {
		return this.impboxsecurity;
	}

	public void setImpboxsecurity(Integer impboxsecurity) {
		this.impboxsecurity = impboxsecurity;
	}

	public String getBorrowreason() {
		return this.borrowreason;
	}

	public void setBorrowreason(String borrowreason) {
		this.borrowreason = borrowreason;
	}

	public String getApplyopenport() {
		return this.applyopenport;
	}

	public void setApplyopenport(String applyopenport) {
		this.applyopenport = applyopenport;
	}

	public String getApplyinstallsoft() {
		return this.applyinstallsoft;
	}

	public void setApplyinstallsoft(String applyinstallsoft) {
		this.applyinstallsoft = applyinstallsoft;
	}

	public String getUsersign() {
		return this.usersign;
	}

	public void setUsersign(String usersign) {
		this.usersign = usersign;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Date getUsersigndate() {
		return this.usersigndate;
	}

	public void setUsersigndate(Date usersigndate) {
		this.usersigndate = usersigndate;
	}

	public String getDeptleaderopinion() {
		return this.deptleaderopinion;
	}

	public void setDeptleaderopinion(String deptleaderopinion) {
		this.deptleaderopinion = deptleaderopinion;
	}

	public String getDeptleadersign() {
		return this.deptleadersign;
	}

	public void setDeptleadersign(String deptleadersign) {
		this.deptleadersign = deptleadersign;
	}

	public Integer getDeptleaderid() {
		return this.deptleaderid;
	}

	public void setDeptleaderid(Integer deptleaderid) {
		this.deptleaderid = deptleaderid;
	}

	public Date getLeadersigndate() {
		return this.leadersigndate;
	}

	public void setLeadersigndate(Date leadersigndate) {
		this.leadersigndate = leadersigndate;
	}

	public Integer getIsupdate() {
		return this.isupdate;
	}

	public void setIsupdate(Integer isupdate) {
		this.isupdate = isupdate;
	}

	public String getUpdateversion() {
		return this.updateversion;
	}

	public void setUpdateversion(String updateversion) {
		this.updateversion = updateversion;
	}

	public String getOpenport() {
		return this.openport;
	}

	public void setOpenport(String openport) {
		this.openport = openport;
	}

	public String getInstallsoft() {
		return this.installsoft;
	}

	public void setInstallsoft(String installsoft) {
		this.installsoft = installsoft;
	}

	public String getOperator1() {
		return this.operator1;
	}

	public void setOperator1(String operator1) {
		this.operator1 = operator1;
	}

	public Integer getOperatorid1() {
		return this.operatorid1;
	}

	public void setOperatorid1(Integer operatorid1) {
		this.operatorid1 = operatorid1;
	}

	public Date getOperatordate1() {
		return this.operatordate1;
	}

	public void setOperatordate1(Date operatordate1) {
		this.operatordate1 = operatordate1;
	}

	public String getReceiver() {
		return this.receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public Integer getReceiverid() {
		return this.receiverid;
	}

	public void setReceiverid(Integer receiverid) {
		this.receiverid = receiverid;
	}

	public Date getReceiverdate() {
		return this.receiverdate;
	}

	public void setReceiverdate(Date receiverdate) {
		this.receiverdate = receiverdate;
	}

	public String getCheckcondition() {
		return this.checkcondition;
	}

	public void setCheckcondition(String checkcondition) {
		this.checkcondition = checkcondition;
	}

	public String getTransfersign() {
		return this.transfersign;
	}

	public void setTransfersign(String transfersign) {
		this.transfersign = transfersign;
	}

	public Integer getTransferid() {
		return this.transferid;
	}

	public void setTransferid(Integer transferid) {
		this.transferid = transferid;
	}

	public String getCheckersign() {
		return this.checkersign;
	}

	public void setCheckersign(String checkersign) {
		this.checkersign = checkersign;
	}

	public Integer getCheckerid() {
		return this.checkerid;
	}

	public void setCheckerid(Integer checkerid) {
		this.checkerid = checkerid;
	}

	public Date getCheckersigndate() {
		return this.checkersigndate;
	}

	public void setCheckersigndate(Date checkersigndate) {
		this.checkersigndate = checkersigndate;
	}

	public String getPortcondition() {
		return this.portcondition;
	}

	public void setPortcondition(String portcondition) {
		this.portcondition = portcondition;
	}

	public String getOperator2() {
		return this.operator2;
	}

	public void setOperator2(String operator2) {
		this.operator2 = operator2;
	}

	public Integer getOperatorid2() {
		return this.operatorid2;
	}

	public void setOperatorid2(Integer operatorid2) {
		this.operatorid2 = operatorid2;
	}

	public Date getOperatordate2() {
		return this.operatordate2;
	}

	public void setOperatordate2(Date operatordate2) {
		this.operatordate2 = operatordate2;
	}

	public String getSecurityopinion() {
		return this.securityopinion;
	}

	public void setSecurityopinion(String securityopinion) {
		this.securityopinion = securityopinion;
	}

	public String getSecuritysign() {
		return this.securitysign;
	}

	public void setSecuritysign(String securitysign) {
		this.securitysign = securitysign;
	}

	public Integer getSecurityid() {
		return this.securityid;
	}

	public void setSecurityid(Integer securityid) {
		this.securityid = securityid;
	}

	public Date getSecuritysigndate() {
		return this.securitysigndate;
	}

	public void setSecuritysigndate(Date securitysigndate) {
		this.securitysigndate = securitysigndate;
	}

}