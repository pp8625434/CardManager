package com.manage.cooperationcheck.model.original;


import java.io.Serializable;
import java.util.Date;

import com.base.framework.model.BaseObject;

/**
 * 涉密协作配套单位保密监督检查表（样本）
 */

public abstract class AbstractCooperationCheck extends BaseObject implements java.io.Serializable {

	// Fields
	private Integer id;
	private Integer version;
	private String deptname;
	private String enterprisepro;
	private String legalpers;
	private String supedept;
	private String mailaddress;
	private String postcode;
	private String cellphone;
	private String fax;
	private String securitydept;
	private String bmtel;
	private Integer checktype;
	private Integer deptbelong;
	private String belongelse;
	private Date begindate;
	private Date enddate;
	private Integer isorgperfect;
	private Integer isauthorclear;
	private Integer issysclear;
	private Integer ishavesys;
	private Integer isflowclear;
	private Integer issecident;
	private Integer isstrictcheck;
	private Integer issecedu;
	private Integer issigndoc;
	private Integer isprocright;
	private Integer isstandard;
	private Integer isaccordgd;
	private Integer ismeasure;
	private Integer isconfdept;
	private Integer isdeptperfect;
	private Integer iseffeaction;
	private Integer isisolation;
	private Integer isdutyclear;
	private Integer iscontrol;
	private Integer isfoxcontrol;
	private Integer issecwork;
	private Integer iskeep;
	private Integer isszcopy;
	private Integer isusecarrier;
	private Integer iscorrect;
	private Integer ishappen;
	private String checkcondition;
	private String orgsign;
	private Integer orgsignid;
	private Date orgdate;
	private String xzdeptprom;
	private String fgleader;
	private Integer fgleaderid;
	private Date fgsigndate;
	private String checkopinion;
	private String deptleader;
	private Integer deptleaderid;
	private Date leaderdate;
	private String username;
	private Integer userid;

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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
	
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getEnterprisepro() {
		return enterprisepro;
	}
	public void setEnterprisepro(String enterprisepro) {
		this.enterprisepro = enterprisepro;
	}
	public String getLegalpers() {
		return legalpers;
	}
	public void setLegalpers(String legalpers) {
		this.legalpers = legalpers;
	}
	public String getSupedept() {
		return supedept;
	}
	public void setSupedept(String supedept) {
		this.supedept = supedept;
	}
	public String getMailaddress() {
		return mailaddress;
	}
	public void setMailaddress(String mailaddress) {
		this.mailaddress = mailaddress;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getSecuritydept() {
		return securitydept;
	}
	public void setSecuritydept(String securitydept) {
		this.securitydept = securitydept;
	}
	public String getBmtel() {
		return bmtel;
	}
	public void setBmtel(String bmtel) {
		this.bmtel = bmtel;
	}
	public Integer getChecktype() {
		return checktype;
	}
	public void setChecktype(Integer checktype) {
		this.checktype = checktype;
	}
	public Integer getDeptbelong() {
		return deptbelong;
	}
	public void setDeptbelong(Integer deptbelong) {
		this.deptbelong = deptbelong;
	}
	public String getBelongelse() {
		return belongelse;
	}
	public void setBelongelse(String belongelse) {
		this.belongelse = belongelse;
	}
	public Date getBegindate() {
		return begindate;
	}
	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public Integer getIsorgperfect() {
		return isorgperfect;
	}
	public void setIsorgperfect(Integer isorgperfect) {
		this.isorgperfect = isorgperfect;
	}
	public Integer getIsauthorclear() {
		return isauthorclear;
	}
	public void setIsauthorclear(Integer isauthorclear) {
		this.isauthorclear = isauthorclear;
	}
	public Integer getIssysclear() {
		return issysclear;
	}
	public void setIssysclear(Integer issysclear) {
		this.issysclear = issysclear;
	}
	public Integer getIshavesys() {
		return ishavesys;
	}
	public void setIshavesys(Integer ishavesys) {
		this.ishavesys = ishavesys;
	}
	public Integer getIsflowclear() {
		return isflowclear;
	}
	public void setIsflowclear(Integer isflowclear) {
		this.isflowclear = isflowclear;
	}
	public Integer getIssecident() {
		return issecident;
	}
	public void setIssecident(Integer issecident) {
		this.issecident = issecident;
	}
	public Integer getIsstrictcheck() {
		return isstrictcheck;
	}
	public void setIsstrictcheck(Integer isstrictcheck) {
		this.isstrictcheck = isstrictcheck;
	}
	public Integer getIssecedu() {
		return issecedu;
	}
	public void setIssecedu(Integer issecedu) {
		this.issecedu = issecedu;
	}
	public Integer getIssigndoc() {
		return issigndoc;
	}
	public void setIssigndoc(Integer issigndoc) {
		this.issigndoc = issigndoc;
	}
	public Integer getIsprocright() {
		return isprocright;
	}
	public void setIsprocright(Integer isprocright) {
		this.isprocright = isprocright;
	}
	public Integer getIsstandard() {
		return isstandard;
	}
	public void setIsstandard(Integer isstandard) {
		this.isstandard = isstandard;
	}
	public Integer getIsaccordgd() {
		return isaccordgd;
	}
	public void setIsaccordgd(Integer isaccordgd) {
		this.isaccordgd = isaccordgd;
	}
	public Integer getIsmeasure() {
		return ismeasure;
	}
	public void setIsmeasure(Integer ismeasure) {
		this.ismeasure = ismeasure;
	}
	public Integer getIsconfdept() {
		return isconfdept;
	}
	public void setIsconfdept(Integer isconfdept) {
		this.isconfdept = isconfdept;
	}
	public Integer getIsdeptperfect() {
		return isdeptperfect;
	}
	public void setIsdeptperfect(Integer isdeptperfect) {
		this.isdeptperfect = isdeptperfect;
	}
	public Integer getIseffeaction() {
		return iseffeaction;
	}
	public void setIseffeaction(Integer iseffeaction) {
		this.iseffeaction = iseffeaction;
	}
	public Integer getIsisolation() {
		return isisolation;
	}
	public void setIsisolation(Integer isisolation) {
		this.isisolation = isisolation;
	}
	public Integer getIsdutyclear() {
		return isdutyclear;
	}
	public void setIsdutyclear(Integer isdutyclear) {
		this.isdutyclear = isdutyclear;
	}
	public Integer getIscontrol() {
		return iscontrol;
	}
	public void setIscontrol(Integer iscontrol) {
		this.iscontrol = iscontrol;
	}
	public Integer getIsfoxcontrol() {
		return isfoxcontrol;
	}
	public void setIsfoxcontrol(Integer isfoxcontrol) {
		this.isfoxcontrol = isfoxcontrol;
	}
	public Integer getIssecwork() {
		return issecwork;
	}
	public void setIssecwork(Integer issecwork) {
		this.issecwork = issecwork;
	}
	public Integer getIskeep() {
		return iskeep;
	}
	public void setIskeep(Integer iskeep) {
		this.iskeep = iskeep;
	}
	public Integer getIsszcopy() {
		return isszcopy;
	}
	public void setIsszcopy(Integer isszcopy) {
		this.isszcopy = isszcopy;
	}
	public Integer getIsusecarrier() {
		return isusecarrier;
	}
	public void setIsusecarrier(Integer isusecarrier) {
		this.isusecarrier = isusecarrier;
	}
	public Integer getIscorrect() {
		return iscorrect;
	}
	public void setIscorrect(Integer iscorrect) {
		this.iscorrect = iscorrect;
	}
	public Integer getIshappen() {
		return ishappen;
	}
	public void setIshappen(Integer ishappen) {
		this.ishappen = ishappen;
	}
	public String getCheckcondition() {
		return checkcondition;
	}
	public void setCheckcondition(String checkcondition) {
		this.checkcondition = checkcondition;
	}
	public String getOrgsign() {
		return orgsign;
	}
	public void setOrgsign(String orgsign) {
		this.orgsign = orgsign;
	}
	public Integer getOrgsignid() {
		return orgsignid;
	}
	public void setOrgsignid(Integer orgsignid) {
		this.orgsignid = orgsignid;
	}
	public Date getOrgdate() {
		return orgdate;
	}
	public void setOrgdate(Date orgdate) {
		this.orgdate = orgdate;
	}
	public String getXzdeptprom() {
		return xzdeptprom;
	}
	public void setXzdeptprom(String xzdeptprom) {
		this.xzdeptprom = xzdeptprom;
	}
	public String getFgleader() {
		return fgleader;
	}
	public void setFgleader(String fgleader) {
		this.fgleader = fgleader;
	}
	public Integer getFgleaderid() {
		return fgleaderid;
	}
	public void setFgleaderid(Integer fgleaderid) {
		this.fgleaderid = fgleaderid;
	}
	public Date getFgsigndate() {
		return fgsigndate;
	}
	public void setFgsigndate(Date fgsigndate) {
		this.fgsigndate = fgsigndate;
	}
	public String getCheckopinion() {
		return checkopinion;
	}
	public void setCheckopinion(String checkopinion) {
		this.checkopinion = checkopinion;
	}
	public String getDeptleader() {
		return deptleader;
	}
	public void setDeptleader(String deptleader) {
		this.deptleader = deptleader;
	}
	public Integer getDeptleaderid() {
		return deptleaderid;
	}
	public void setDeptleaderid(Integer deptleaderid) {
		this.deptleaderid = deptleaderid;
	}
	public Date getLeaderdate() {
		return leaderdate;
	}
	public void setLeaderdate(Date leaderdate) {
		this.leaderdate = leaderdate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

}