package com.manage.temp.model.original;

import java.util.Date;

/**
 * AbstractSDepseccheckTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSDepseccheckTab implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String jobchange;
	private String personeduca;
	private String outperson;
	private String ptrain;
	private String handleinfor;
	private String useregist;
	private String scoryinfor;
	private String cbmeeting;
	private String secmanage;
	private String cbactivity;
	private String employzczg;
	private String cooperation;
	private String otherinfor;
	private String question;
	private String corrective;
	private String depsign;
	private Integer depid;
	private Date signdate;
	private Date depdate;
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
	public AbstractSDepseccheckTab() {
	}

	/** minimal constructor */
	public AbstractSDepseccheckTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSDepseccheckTab(Integer id, Integer version,
			String jobchange, String personeduca, String outperson,
			String ptrain, String handleinfor, String useregist,
			String scoryinfor, String cbmeeting, String secmanage,
			String cbactivity, String employzczg, String cooperation,
			String otherinfor, String question, String corrective,
			String depsign, Integer depid, Date signdate, Date depdate) {
		this.id = id;
		this.version = version;
		this.jobchange = jobchange;
		this.personeduca = personeduca;
		this.outperson = outperson;
		this.ptrain = ptrain;
		this.handleinfor = handleinfor;
		this.useregist = useregist;
		this.scoryinfor = scoryinfor;
		this.cbmeeting = cbmeeting;
		this.secmanage = secmanage;
		this.cbactivity = cbactivity;
		this.employzczg = employzczg;
		this.cooperation = cooperation;
		this.otherinfor = otherinfor;
		this.question = question;
		this.corrective = corrective;
		this.depsign = depsign;
		this.depid = depid;
		this.signdate = signdate;
		this.depdate = depdate;
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

	public String getJobchange() {
		return this.jobchange;
	}

	public void setJobchange(String jobchange) {
		this.jobchange = jobchange;
	}

	public String getPersoneduca() {
		return this.personeduca;
	}

	public void setPersoneduca(String personeduca) {
		this.personeduca = personeduca;
	}

	public String getOutperson() {
		return this.outperson;
	}

	public void setOutperson(String outperson) {
		this.outperson = outperson;
	}

	public String getPtrain() {
		return this.ptrain;
	}

	public void setPtrain(String ptrain) {
		this.ptrain = ptrain;
	}

	public String getHandleinfor() {
		return this.handleinfor;
	}

	public void setHandleinfor(String handleinfor) {
		this.handleinfor = handleinfor;
	}

	public String getUseregist() {
		return this.useregist;
	}

	public void setUseregist(String useregist) {
		this.useregist = useregist;
	}

	public String getScoryinfor() {
		return this.scoryinfor;
	}

	public void setScoryinfor(String scoryinfor) {
		this.scoryinfor = scoryinfor;
	}

	public String getCbmeeting() {
		return this.cbmeeting;
	}

	public void setCbmeeting(String cbmeeting) {
		this.cbmeeting = cbmeeting;
	}

	public String getSecmanage() {
		return this.secmanage;
	}

	public void setSecmanage(String secmanage) {
		this.secmanage = secmanage;
	}

	public String getCbactivity() {
		return this.cbactivity;
	}

	public void setCbactivity(String cbactivity) {
		this.cbactivity = cbactivity;
	}

	public String getEmployzczg() {
		return this.employzczg;
	}

	public void setEmployzczg(String employzczg) {
		this.employzczg = employzczg;
	}

	public String getCooperation() {
		return this.cooperation;
	}

	public void setCooperation(String cooperation) {
		this.cooperation = cooperation;
	}

	public String getOtherinfor() {
		return this.otherinfor;
	}

	public void setOtherinfor(String otherinfor) {
		this.otherinfor = otherinfor;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getCorrective() {
		return this.corrective;
	}

	public void setCorrective(String corrective) {
		this.corrective = corrective;
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

	public Date getSigndate() {
		return this.signdate;
	}

	public void setSigndate(Date signdate) {
		this.signdate = signdate;
	}

	public Date getDepdate() {
		return this.depdate;
	}

	public void setDepdate(Date depdate) {
		this.depdate = depdate;
	}

}