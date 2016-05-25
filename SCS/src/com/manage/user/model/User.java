package com.manage.user.model;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.manage.org.model.Org;
import com.manage.user.model.original.UserAbstract;

public class User extends UserAbstract implements java.io.Serializable {
	
	//����ϵͳ���������û�
	private String sessionId;
	
	private String displayPath;
	public User() {
	}
	
	public User(Integer id) {
		this.id = id;
	}
	
	// ����ѡ����ʱ�ã������޸� 
	public User(Integer id,Integer version, String name, String nickname, String realname,
			String password, Date createdate, Date updatedate, Integer isopen) {
		this.id = id;
		this.version = version;
		this.name = name;
		this.nickname = nickname;
		this.realname = realname;
		this.password = password;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.isopen = isopen;
	}
	
	// minimal constructor 
	public User(Integer id,String name, String nickname, String realname,
			String password, Date createdate, Date updatedate, Integer isopen,
			Integer orgId,String orgName,Date accountoverdate,String roleNames,String importinfo1) {
		this.id = id;
		this.name = name;
		this.nickname = nickname;
		this.realname = realname;
		this.password = password;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.isopen = isopen;
		this.orgId = orgId;
		this.orgName = orgName;
		this.accountoverdate = accountoverdate;
		this.roleNames = roleNames;
		this.importinfo1 = importinfo1;
	}

	//** full constructor 
	public User(String name, String nickname, String realname,
			String password, Integer sex, Date birthday, String mail,
			String card, String phone, String cellphone, Integer diploma,
			Integer clan, String workunit, String address, String postcode,
			String headpicpath, Date workdate, Date createdate,
			Date updatedate, Date lastlogindate, Date accountoverdate,
			Date studyoverduedate, Integer isbathcard, String bathcardnum,
			String description, Integer isopen, String pwdquestion,
			String pwdanswer, Integer version,Integer orgId,String orgName) {
		this.name = name;
		this.nickname = nickname;
		this.realname = realname;
		this.password = password;
		this.sex = sex;
		this.birthday = birthday;
		this.mail = mail;
		this.card = card;
		this.phone = phone;
		this.cellphone = cellphone;
		this.diploma = diploma;
		this.clan = clan;
		this.workunit = workunit;
		this.address = address;
		this.postcode = postcode;
		this.headpicpath = headpicpath;
		this.workdate = workdate;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.lastlogindate = lastlogindate;
		this.accountoverdate = accountoverdate;
		this.studyoverduedate = studyoverduedate;
		this.isbathcard = isbathcard;
		this.bathcardnum = bathcardnum;
		this.description = description;
		this.isopen = isopen;
		this.pwdquestion = pwdquestion;
		this.pwdanswer = pwdanswer;
		this.version = version;
		this.orgId = orgId;
		this.orgName = orgName;
	}
	
	/** session�з����user  */
	public User(Integer id ,Integer version,String name, String nickname, String realname,
			String password, Date createdate, Date updatedate, Integer isopen,Integer orgId,String orgName,Date accountoverdate ) {
		this.id = id;
		this.version = version;
		this.name = name;
		this.nickname = nickname;
		this.realname = realname;
		this.password = password;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.isopen = isopen;
		this.orgId = orgId;
		this.orgName = orgName;
		this.accountoverdate = accountoverdate;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public String getDisplayPath() {
		return displayPath;
	}

	public void setDisplayPath(String displayPath) {
		this.displayPath = displayPath;
	}
}