package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractSDivulgesecretTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSDivulgesecretTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String deptname;
	private Integer deptid;
	private Date finddate;
	private String findplace;
	private String finder;
	private String finderposition;
	private String briefproc;
	private String party;
	private String partyposition;
	private Date happendate;
	private String happenplace;
	private String divulgetype;
	private Integer divulgesec;
	private String briefcondition;
	private String harm;
	private String workcondition;
	private String measures;
	private String deptopinion;
	private String deptleadersign;
	private Integer deptleaderid;
	private Date leadersigndate;
	private String sofficedesc;
	private String sofficesign;
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
	public AbstractSDivulgesecretTab() {
	}

	/** minimal constructor */
	public AbstractSDivulgesecretTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSDivulgesecretTab(Integer id, Integer version,
			String deptname, Integer deptid, Date finddate, String findplace,
			String finder, String finderposition, String briefproc,
			String party, String partyposition, Date happendate,
			String happenplace, String divulgetype, Integer divulgesec,
			String briefcondition, String harm, String workcondition,
			String measures, String deptopinion, String deptleadersign,
			Integer deptleaderid, Date leadersigndate, String sofficedesc,
			String sofficesign, Integer sofficeid, Date sofficedate) {
		this.id = id;
		this.version = version;
		this.deptname = deptname;
		this.deptid = deptid;
		this.finddate = finddate;
		this.findplace = findplace;
		this.finder = finder;
		this.finderposition = finderposition;
		this.briefproc = briefproc;
		this.party = party;
		this.partyposition = partyposition;
		this.happendate = happendate;
		this.happenplace = happenplace;
		this.divulgetype = divulgetype;
		this.divulgesec = divulgesec;
		this.briefcondition = briefcondition;
		this.harm = harm;
		this.workcondition = workcondition;
		this.measures = measures;
		this.deptopinion = deptopinion;
		this.deptleadersign = deptleadersign;
		this.deptleaderid = deptleaderid;
		this.leadersigndate = leadersigndate;
		this.sofficedesc = sofficedesc;
		this.sofficesign = sofficesign;
		this.sofficeid = sofficeid;
		this.sofficedate = sofficedate;
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

	public Date getFinddate() {
		return this.finddate;
	}

	public void setFinddate(Date finddate) {
		this.finddate = finddate;
	}

	public String getFindplace() {
		return this.findplace;
	}

	public void setFindplace(String findplace) {
		this.findplace = findplace;
	}

	public String getFinder() {
		return this.finder;
	}

	public void setFinder(String finder) {
		this.finder = finder;
	}

	public String getFinderposition() {
		return this.finderposition;
	}

	public void setFinderposition(String finderposition) {
		this.finderposition = finderposition;
	}

	public String getBriefproc() {
		return this.briefproc;
	}

	public void setBriefproc(String briefproc) {
		this.briefproc = briefproc;
	}

	public String getParty() {
		return this.party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	public String getPartyposition() {
		return this.partyposition;
	}

	public void setPartyposition(String partyposition) {
		this.partyposition = partyposition;
	}

	public Date getHappendate() {
		return this.happendate;
	}

	public void setHappendate(Date happendate) {
		this.happendate = happendate;
	}

	public String getHappenplace() {
		return this.happenplace;
	}

	public void setHappenplace(String happenplace) {
		this.happenplace = happenplace;
	}

	public String getDivulgetype() {
		return this.divulgetype;
	}

	public void setDivulgetype(String divulgetype) {
		this.divulgetype = divulgetype;
	}

	public Integer getDivulgesec() {
		return this.divulgesec;
	}

	public void setDivulgesec(Integer divulgesec) {
		this.divulgesec = divulgesec;
	}

	public String getBriefcondition() {
		return this.briefcondition;
	}

	public void setBriefcondition(String briefcondition) {
		this.briefcondition = briefcondition;
	}

	public String getHarm() {
		return this.harm;
	}

	public void setHarm(String harm) {
		this.harm = harm;
	}

	public String getWorkcondition() {
		return this.workcondition;
	}

	public void setWorkcondition(String workcondition) {
		this.workcondition = workcondition;
	}

	public String getMeasures() {
		return this.measures;
	}

	public void setMeasures(String measures) {
		this.measures = measures;
	}

	public String getDeptopinion() {
		return this.deptopinion;
	}

	public void setDeptopinion(String deptopinion) {
		this.deptopinion = deptopinion;
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

	public String getSofficedesc() {
		return this.sofficedesc;
	}

	public void setSofficedesc(String sofficedesc) {
		this.sofficedesc = sofficedesc;
	}

	public String getSofficesign() {
		return this.sofficesign;
	}

	public void setSofficesign(String sofficesign) {
		this.sofficesign = sofficesign;
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