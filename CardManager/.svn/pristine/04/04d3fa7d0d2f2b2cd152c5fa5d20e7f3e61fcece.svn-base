package com.manage.order.model.original;

import java.io.Serializable;
import java.util.Date;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.order.model.OrderBill;

public class OrderBillAbstract extends BaseObject implements Serializable{
	
	protected Integer id;
	protected Integer version;
	protected Integer orderid;
	protected Integer mid;
	protected Integer cid;
	protected Double count;
	protected Double dprice;
	protected Double allprice;
	protected Double sprice;
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
	
	public Double getAllprice() {
		return allprice;
	}

	public void setAllprice(Double allprice) {
		this.allprice = allprice;
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
		if ( !(other instanceof OrderBill) ) return false;
		OrderBill castOther = ( OrderBill ) other; 
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

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Double getCount() {
		return count;
	}

	public void setCount(Double count) {
		this.count = count;
	}

	public Double getDprice() {
		return dprice;
	}

	public void setDprice(Double dprice) {
		this.dprice = dprice;
	}

	public Double getSprice() {
		return sprice;
	}

	public void setSprice(Double sprice) {
		this.sprice = sprice;
	}

}
