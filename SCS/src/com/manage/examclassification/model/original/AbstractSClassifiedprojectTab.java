package com.manage.examclassification.model.original;

/**
 * AbstractSClassifiedprojectTab generated by MyEclipse Persistence Tools
 */

public abstract class AbstractSClassifiedprojectTab implements
		java.io.Serializable {

	// Fields

	private Integer id;
	private Integer version;
	private Integer ecid;
	private String proname;
	private Integer classification;

	// Constructors

	/** default constructor */
	public AbstractSClassifiedprojectTab() {
	}

	/** minimal constructor */
	public AbstractSClassifiedprojectTab(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public AbstractSClassifiedprojectTab(Integer id, Integer version,
			Integer ecid, String proname, Integer classification) {
		this.id = id;
		this.version = version;
		this.ecid = ecid;
		this.proname = proname;
		this.classification = classification;
	}

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

	public Integer getEcid() {
		return this.ecid;
	}

	public void setEcid(Integer ecid) {
		this.ecid = ecid;
	}

	public String getProname() {
		return this.proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public Integer getClassification() {
		return this.classification;
	}

	public void setClassification(Integer classification) {
		this.classification = classification;
	}

}