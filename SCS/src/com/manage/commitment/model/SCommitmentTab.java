package com.manage.commitment.model;

// Generated by MyEclipse Persistence Tools

import java.util.Date;

import com.manage.commitment.model.original.AbstractSCommitmentTab;

/**
 * SCommitmentTab generated by MyEclipse Persistence Tools
 */
public class SCommitmentTab extends AbstractSCommitmentTab implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public SCommitmentTab() {
	}

	/** minimal constructor */
	public SCommitmentTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public SCommitmentTab(Integer id, Integer version, String orgname,
			String orgid, String office, String name, String position,
			String title, Integer classification, String address, String phone,
			String cellphone, String deskmodel, String portablemodels,
			Integer deskintercon, Integer portableintercon, String comname,
			Date comdate) {
		super(id, version, orgname, orgid, office, name, position, title,
				classification, address, phone, cellphone, deskmodel,
				portablemodels, deskintercon, portableintercon, comname,
				comdate);
	}

}
