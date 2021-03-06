package com.manage.appsysnetin.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 应用系统入网审批表
 */

public abstract class AbstractAppSysNetIn extends BaseObject implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String sysname;
	private String projectprincipal;
	private String executivedept;
	private Integer executivedeptid;
	private String deptprincipal;
	private String sysdevelopdept;
	private String developor;
	private String developdeptzizhi;
	private Integer security;
	private String accesspoint;
	private String applicationrange;
	private String functionsketch;
	private String projectdata;
	private String environment;
	private String securitypolicy;
	private String setupdept;
	private String setupdeptsign;
	private Integer setuporid;
	private Date setupordate;
	private String securityopinion;
	private String securitysign;
	private Integer securityid;
	private Date securitysigndate;
	private String infordeptopinion;
	private String infordeptsign;
	private Integer infordeptsignid;
	private Date infordeptsigndate;
	
	private String filePath;
	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
	// Property accessors

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

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

	public String getSysname() {
		return this.sysname;
	}

	public void setSysname(String sysname) {
		this.sysname = sysname;
	}

	public String getProjectprincipal() {
		return this.projectprincipal;
	}

	public void setProjectprincipal(String projectprincipal) {
		this.projectprincipal = projectprincipal;
	}

	public String getExecutivedept() {
		return this.executivedept;
	}

	public void setExecutivedept(String executivedept) {
		this.executivedept = executivedept;
	}

	public Integer getExecutivedeptid() {
		return this.executivedeptid;
	}

	public void setExecutivedeptid(Integer executivedeptid) {
		this.executivedeptid = executivedeptid;
	}

	public String getDeptprincipal() {
		return this.deptprincipal;
	}

	public void setDeptprincipal(String deptprincipal) {
		this.deptprincipal = deptprincipal;
	}

	public String getSysdevelopdept() {
		return this.sysdevelopdept;
	}

	public void setSysdevelopdept(String sysdevelopdept) {
		this.sysdevelopdept = sysdevelopdept;
	}

	public String getDevelopor() {
		return this.developor;
	}

	public void setDevelopor(String developor) {
		this.developor = developor;
	}

	public String getDevelopdeptzizhi() {
		return this.developdeptzizhi;
	}

	public void setDevelopdeptzizhi(String developdeptzizhi) {
		this.developdeptzizhi = developdeptzizhi;
	}

	public Integer getSecurity() {
		return this.security;
	}

	public void setSecurity(Integer security) {
		this.security = security;
	}

	public String getAccesspoint() {
		return this.accesspoint;
	}

	public void setAccesspoint(String accesspoint) {
		this.accesspoint = accesspoint;
	}

	public String getApplicationrange() {
		return this.applicationrange;
	}

	public void setApplicationrange(String applicationrange) {
		this.applicationrange = applicationrange;
	}

	public String getFunctionsketch() {
		return this.functionsketch;
	}

	public void setFunctionsketch(String functionsketch) {
		this.functionsketch = functionsketch;
	}

	public String getProjectdata() {
		return this.projectdata;
	}

	public void setProjectdata(String projectdata) {
		this.projectdata = projectdata;
	}

	public String getEnvironment() {
		return this.environment;
	}

	public void setEnvironment(String environment) {
		this.environment = environment;
	}

	public String getSecuritypolicy() {
		return this.securitypolicy;
	}

	public void setSecuritypolicy(String securitypolicy) {
		this.securitypolicy = securitypolicy;
	}

	public String getSetupdept() {
		return this.setupdept;
	}

	public void setSetupdept(String setupdept) {
		this.setupdept = setupdept;
	}

	public String getSetupdeptsign() {
		return this.setupdeptsign;
	}

	public void setSetupdeptsign(String setupdeptsign) {
		this.setupdeptsign = setupdeptsign;
	}

	public Integer getSetuporid() {
		return this.setuporid;
	}

	public void setSetuporid(Integer setuporid) {
		this.setuporid = setuporid;
	}

	public Date getSetupordate() {
		return this.setupordate;
	}

	public void setSetupordate(Date setupordate) {
		this.setupordate = setupordate;
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
}