package com.manage.card.model.original;

import java.io.Serializable;
import java.util.Date;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import com.base.framework.model.BaseObject;
import com.manage.card.model.Card;

public class CardAbstract extends BaseObject implements Serializable{
	
	protected Integer id;
	protected Integer version;
	protected String orgid;
	protected Integer uid;
	protected String cardnum;
	protected String password;
	protected String cellphone;
	protected String name;
	protected Integer sex;
	protected String identitycard;
	protected String phone;
	protected String address;
	protected Integer state;
	protected String headpath;
	protected Double credit;
	protected Double money;
	protected Double discount;
	protected Date addtime;
	protected Date changetime;
	
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

	public String getOrgid() {
		return orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

	public String getCardnum() {
		return cardnum;
	}

	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getIdentitycard() {
		return identitycard;
	}

	public void setIdentitycard(String identitycard) {
		this.identitycard = identitycard;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getHeadpath() {
		return headpath;
	}

	public void setHeadpath(String headpath) {
		this.headpath = headpath;
	}

	public Double getCredit() {
		return credit;
	}

	public void setCredit(Double credit) {
		this.credit = credit;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Date getChangetime() {
		return changetime;
	}

	public void setChangetime(Date changetime) {
		this.changetime = changetime;
	}

	@Override
	public boolean equals(Object other) {
		if ( (this == other ) ) return true;
		if ( (other == null ) ) return false;
		if ( !(other instanceof Card) ) return false;
		Card castOther = ( Card ) other; 
		return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
	}

	@Override
	public Serializable getPrimarykey() {
		return id;
	}

	@Override
	public int hashCode() {
		HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());

        return hcb.toHashCode();
	}

	@Override
	public String toString() {
		ToStringBuilder tsb = new ToStringBuilder(ToStringStyle.DEFAULT_STYLE);
		tsb.append("id", id);
		tsb.append("name",uid);
		return tsb.toString();
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
