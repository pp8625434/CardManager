package com.manage.temp.model;

// Generated by MyEclipse Persistence Tools

import java.util.Date;

import com.manage.temp.model.original.AbstractSInterviewTab;

/**
 * SInterviewTab generated by MyEclipse Persistence Tools
 */
public class SInterviewTab extends AbstractSInterviewTab implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public SInterviewTab() {
	}

	/** minimal constructor */
	public SInterviewTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public SInterviewTab(Integer id, Integer version, String interviewer,
			String dept, String contentscope, Date interviewdate,
			String interviewee, String interdept, String purpose,
			String sfdeptopinion, String sfsign, Integer sfsignid,
			Date sfsigndate, String sofficedesc, String sofficesign,
			Integer sofficeid, Date sofficedate, String ysofficedesc,
			String ysofficesign, Integer ysofficeid, Date ysofficedate) {
		super(id, version, interviewer, dept, contentscope, interviewdate,
				interviewee, interdept, purpose, sfdeptopinion, sfsign,
				sfsignid, sfsigndate, sofficedesc, sofficesign, sofficeid,
				sofficedate, ysofficedesc, ysofficesign, ysofficeid,
				ysofficedate);
	}

}