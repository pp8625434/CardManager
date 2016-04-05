package com.manage.order.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.order.model.Order;

public class OrderAbstract extends BaseObject implements Serializable{
	
	protected Integer id;
	protected Integer version;
	protected Integer otype;
	protected Integer mid;
	protected Integer userid;
	protected String orgid;
	protected String cardnum;
	protected Double allprice;
	protected Integer paytype;
	protected Double cash;
	protected Double money;
	protected Double paycredit;
	protected Double paycreditmoney;
	protected Double discount;
	protected Date addtime;
	
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

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
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

	public Double getAllprice() {
		return allprice;
	}

	public void setAllprice(Double allprice) {
		this.allprice = allprice;
	}

	public Integer getPaytype() {
		return paytype;
	}

	public void setPaytype(Integer paytype) {
		this.paytype = paytype;
	}

	public Double getCash() {
		return cash;
	}

	public void setCash(Double cash) {
		this.cash = cash;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Double getPaycredit() {
		return paycredit;
	}

	public void setPaycredit(Double paycredit) {
		this.paycredit = paycredit;
	}

	public Double getPaycreditmoney() {
		return paycreditmoney;
	}

	public void setPaycreditmoney(Double paycreditmoney) {
		this.paycreditmoney = paycreditmoney;
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

	@Override
	public boolean equals(Object other) {
		if ( (this == other ) ) return true;
		if ( (other == null ) ) return false;
		if ( !(other instanceof Order) ) return false;
		Order castOther = ( Order ) other; 
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
		return tsb.toString();
	}

	public Integer getOtype() {
		return otype;
	}

	public void setOtype(Integer otype) {
		this.otype = otype;
	}

}
