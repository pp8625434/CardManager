package com.manage.pcinternetdeclear.model;

// Generated by MyEclipse Persistence Tools

import java.util.Date;

import com.manage.pcinternetdeclear.model.original.AbstractSPcinternetdeclearTab;

/**
 * SPcinternetdeclearTab generated by MyEclipse Persistence Tools
 */
public class SPcinternetdeclearTab extends AbstractSPcinternetdeclearTab
		implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public SPcinternetdeclearTab() {
	}

	/** minimal constructor */
	public SPcinternetdeclearTab(Integer id) {
		super(id);
	}

	/** full constructor */
	public SPcinternetdeclearTab(Integer id, Integer version, String unit,
			String unitid, String shead, String office, String models,
			String haddress, String serialnum, Integer isspecial,
			String sresponsible, String licensenum, String mainmatter,
			String smeasures, String departmentdesc, Date departmentdate,
			String comdepartdesc, Date comdepartdate,String username,Integer userid) {
		super(id, version, unit, unitid, shead, office, models, haddress,
				serialnum, isspecial, sresponsible, licensenum, mainmatter,
				smeasures, departmentdesc, departmentdate, comdepartdesc,
				comdepartdate,username,userid);
	}

}