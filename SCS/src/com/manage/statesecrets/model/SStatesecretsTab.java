package com.manage.statesecrets.model;

import java.util.Date;

import com.manage.statesecrets.model.original.AbstractSStatesecretsTab;

/**
 * SStatesecretsTab generated by MyEclipse Persistence Tools
 */

public class SStatesecretsTab extends AbstractSStatesecretsTab implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public SStatesecretsTab() {
	}

	/** minimal constructor */
	public SStatesecretsTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public SStatesecretsTab(Integer id, Integer version, String orgname,
			String orgid, Date filltime, String pname, String cellphone,
			String mname, Integer adjustpurpose, String oclassification,
			String newclassification, String orperiod, String newperiod,
			String orcontrolrange, String newcontrolrange, String chdecryption,
			String reviewercomments, String dsign, Integer did, Date auditdate,
			String examopinion, String examsign, Date examdate, Integer eaxmid,String username,Integer userid) {
		super(id, version, orgname, orgid, filltime, pname, cellphone, mname,
				adjustpurpose, oclassification, newclassification, orperiod,
				newperiod, orcontrolrange, newcontrolrange, chdecryption,
				reviewercomments, dsign, did, auditdate, examopinion, examsign,
				examdate, eaxmid,username,userid);
	}

}