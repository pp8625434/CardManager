package com.manage.temp.model;

// Generated by MyEclipse Persistence Tools

import java.util.Date;

import com.manage.temp.model.original.AbstractAInformationpublishTab;

/**
 * AInformationpublishTab generated by MyEclipse Persistence Tools
 */
public class AInformationpublishTab extends AbstractAInformationpublishTab
		implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public AInformationpublishTab() {
	}

	/** minimal constructor */
	public AInformationpublishTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public AInformationpublishTab(Integer id, Integer version,
			String applydept, Integer applydeptid, String applicant,
			Integer applicantid, String publishcontent, Date applydate,
			String applydeptopinion, String applydeptsign,
			Integer applydeptsignid, Date applydeptsigndate,
			String securityopinion, String securitysign, Integer securityid,
			Date securitysigndate, String bonddeptopinion, String bonddeptsign,
			Integer bondsignid, Date bondsigndate, String leader,
			String leadersign, Integer leaderid, Date leadersignid,
			String infordeptopinion, String infordeptsign,
			Integer infordeptsignid, Date infordeptsigndate) {
		super(id, version, applydept, applydeptid, applicant, applicantid,
				publishcontent, applydate, applydeptopinion, applydeptsign,
				applydeptsignid, applydeptsigndate, securityopinion,
				securitysign, securityid, securitysigndate, bonddeptopinion,
				bonddeptsign, bondsignid, bondsigndate, leader, leadersign,
				leaderid, leadersignid, infordeptopinion, infordeptsign,
				infordeptsignid, infordeptsigndate);
	}

}
