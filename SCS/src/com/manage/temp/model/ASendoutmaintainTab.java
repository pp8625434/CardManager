package com.manage.temp.model;

// Generated by MyEclipse Persistence Tools

import java.util.Date;

import com.manage.temp.model.original.AbstractASendoutmaintainTab;

/**
 * ASendoutmaintainTab generated by MyEclipse Persistence Tools
 */
public class ASendoutmaintainTab extends AbstractASendoutmaintainTab implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ASendoutmaintainTab() {
	}

	/** minimal constructor */
	public ASendoutmaintainTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public ASendoutmaintainTab(Integer id, Integer version, String applicant,
			Integer applicantid, String devprincipal, Integer devprincipalid,
			Integer maintaintype, String deviceindex, Integer devicesecurity,
			String outlanderdept, Integer issignsecret1, Integer isaptitude1,
			String assignaccompan, String sendoutdept, Integer isremovedisk,
			Integer issignsecret2, Integer isaptitude2, String assignsender,
			String infordeptopinion, String infordeptsign,
			Integer infordeptsignid, Date infordeptsigndate, String deviceuser,
			Integer deviceuserid, Date divuserdate, String senderreceive,
			Integer senderid, Date senderdate, Date senddate, Date returndate,
			Integer issignsecret3, String faultreason, String processmethod,
			String maintainresult, String maintainsign, Date maintainsigndate,
			String accompansign, Date accompansigndate, Integer accompanid,
			String receive, Date receivedate, String sendertransfer,
			Date transferdate, String remark) {
		super(id, version, applicant, applicantid, devprincipal,
				devprincipalid, maintaintype, deviceindex, devicesecurity,
				outlanderdept, issignsecret1, isaptitude1, assignaccompan,
				sendoutdept, isremovedisk, issignsecret2, isaptitude2,
				assignsender, infordeptopinion, infordeptsign, infordeptsignid,
				infordeptsigndate, deviceuser, deviceuserid, divuserdate,
				senderreceive, senderid, senderdate, senddate, returndate,
				issignsecret3, faultreason, processmethod, maintainresult,
				maintainsign, maintainsigndate, accompansign, accompansigndate,
				accompanid, receive, receivedate, sendertransfer, transferdate,
				remark);
	}

}