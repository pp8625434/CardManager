package com.manage.money.model.original;

import java.io.Serializable;
import java.util.Date;
import com.base.framework.model.BaseObject;


public class MoneyLogAbstract extends BaseObject implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected Integer id;
	protected Integer version;
	protected Integer uid;
	protected String cardnum;
	protected Double money;
	protected String dataid;
	protected Date addtime;
	protected Integer mtype;
	protected String remarks;
	protected Integer creator;
	protected String creatorname;
	
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
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public String getDataid() {
		return dataid;
	}
	public void setDataid(String dataid) {
		this.dataid = dataid;
	}
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public Integer getMtype() {
		return mtype;
	}
	public void setMtype(Integer mtype) {
		this.mtype = mtype;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Integer getCreator() {
		return creator;
	}
	public void setCreator(Integer creator) {
		this.creator = creator;
	}
	public String getCreatorname() {
		return creatorname;
	}
	public void setCreatorname(String creatorname) {
		this.creatorname = creatorname;
	}
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
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}
	
}