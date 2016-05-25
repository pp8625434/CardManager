package com.manage.videomeeting.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 视频会议系统使用申请表
 */

public abstract class AbstractVideoMeeting extends BaseObject implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private String meetingname;
	private String applyorgname;
	private String applyorgid;
	private String applicant;
	private Integer applicantid;
	private String cellphone;
	private Integer meetingtype;
	private String meetingplace;
	private String meetplaceqt;
	private String meetingagenda;
	private String jingqu;
	private String jingwai;
	private Date meetingtime;
	private Date jointdebugtime;
	private Integer isppt;
	private Integer meetingmode;
	private String speakplace;
	private String deptopinion;
	private String deptsign;
	private String deptid;
	private Date deptsigndate;

	private String speakplaceout;
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

	public String getSpeakplaceout() {
		return speakplaceout;
	}

	public void setSpeakplaceout(String speakplaceout) {
		this.speakplaceout = speakplaceout;
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

	public String getMeetingname() {
		return this.meetingname;
	}

	public void setMeetingname(String meetingname) {
		this.meetingname = meetingname;
	}

	public String getApplyorgname() {
		return this.applyorgname;
	}

	public void setApplyorgname(String applyorgname) {
		this.applyorgname = applyorgname;
	}

	public String getApplyorgid() {
		return this.applyorgid;
	}

	public void setApplyorgid(String applyorgid) {
		this.applyorgid = applyorgid;
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

	public Integer getMeetingtype() {
		return this.meetingtype;
	}

	public void setMeetingtype(Integer meetingtype) {
		this.meetingtype = meetingtype;
	}

	public String getMeetingplace() {
		return this.meetingplace;
	}

	public void setMeetingplace(String meetingplace) {
		this.meetingplace = meetingplace;
	}

	public String getMeetingagenda() {
		return this.meetingagenda;
	}

	public void setMeetingagenda(String meetingagenda) {
		this.meetingagenda = meetingagenda;
	}

	public String getJingqu() {
		return this.jingqu;
	}

	public void setJingqu(String jingqu) {
		this.jingqu = jingqu;
	}

	public String getJingwai() {
		return this.jingwai;
	}

	public void setJingwai(String jingwai) {
		this.jingwai = jingwai;
	}

	public Date getMeetingtime() {
		return this.meetingtime;
	}

	public void setMeetingtime(Date meetingtime) {
		this.meetingtime = meetingtime;
	}

	public Date getJointdebugtime() {
		return this.jointdebugtime;
	}

	public void setJointdebugtime(Date jointdebugtime) {
		this.jointdebugtime = jointdebugtime;
	}

	public Integer getIsppt() {
		return this.isppt;
	}

	public void setIsppt(Integer isppt) {
		this.isppt = isppt;
	}

	public Integer getMeetingmode() {
		return this.meetingmode;
	}

	public void setMeetingmode(Integer meetingmode) {
		this.meetingmode = meetingmode;
	}

	public String getSpeakplace() {
		return this.speakplace;
	}

	public void setSpeakplace(String speakplace) {
		this.speakplace = speakplace;
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

	public String getDeptid() {
		return this.deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public Date getDeptsigndate() {
		return this.deptsigndate;
	}

	public void setDeptsigndate(Date deptsigndate) {
		this.deptsigndate = deptsigndate;
	}

	public String getMeetplaceqt() {
		return meetplaceqt;
	}

	public void setMeetplaceqt(String meetplaceqt) {
		this.meetplaceqt = meetplaceqt;
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
}