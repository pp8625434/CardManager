package com.manage.temp.model;

// Generated by MyEclipse Persistence Tools

import java.util.Date;

import com.manage.temp.model.original.AbstractSDepseccheckTab;

/**
 * SDepseccheckTab generated by MyEclipse Persistence Tools
 */
public class SDepseccheckTab extends AbstractSDepseccheckTab implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public SDepseccheckTab() {
	}

	/** minimal constructor */
	public SDepseccheckTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public SDepseccheckTab(Integer id, Integer version, String jobchange,
			String personeduca, String outperson, String ptrain,
			String handleinfor, String useregist, String scoryinfor,
			String cbmeeting, String secmanage, String cbactivity,
			String employzczg, String cooperation, String otherinfor,
			String question, String corrective, String depsign, Integer depid,
			Date signdate, Date depdate) {
		super(id, version, jobchange, personeduca, outperson, ptrain,
				handleinfor, useregist, scoryinfor, cbmeeting, secmanage,
				cbactivity, employzczg, cooperation, otherinfor, question,
				corrective, depsign, depid, signdate, depdate);
	}

}