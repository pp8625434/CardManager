package com.manage.telltalerecord.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 系统失泄密记录表
 */

public abstract class AbstractTelltaleRecord extends BaseObject implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Integer eventtype;
	private Date happendate;
	private String happenreason;
	private String effectrange;
	private String measures;
	private String result;
	private String informant;
	private Integer informantid;
	private String checker;
	private Integer checkerid;

	private String firstperson;
	private Integer firstpid;
	private Date firstsubdate;
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

	public Integer getEventtype() {
		return this.eventtype;
	}

	public void setEventtype(Integer eventtype) {
		this.eventtype = eventtype;
	}

	public Date getHappendate() {
		return this.happendate;
	}

	public void setHappendate(Date happendate) {
		this.happendate = happendate;
	}

	public String getHappenreason() {
		return this.happenreason;
	}

	public void setHappenreason(String happenreason) {
		this.happenreason = happenreason;
	}

	public String getEffectrange() {
		return this.effectrange;
	}

	public void setEffectrange(String effectrange) {
		this.effectrange = effectrange;
	}

	public String getMeasures() {
		return this.measures;
	}

	public void setMeasures(String measures) {
		this.measures = measures;
	}

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getInformant() {
		return this.informant;
	}

	public void setInformant(String informant) {
		this.informant = informant;
	}

	public Integer getInformantid() {
		return this.informantid;
	}

	public void setInformantid(Integer informantid) {
		this.informantid = informantid;
	}

	public String getChecker() {
		return this.checker;
	}

	public void setChecker(String checker) {
		this.checker = checker;
	}

	public Integer getCheckerid() {
		return this.checkerid;
	}

	public void setCheckerid(Integer checkerid) {
		this.checkerid = checkerid;
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