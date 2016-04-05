package com.manage.citys.model.original;

import java.io.Serializable;

import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.base.framework.model.BaseObject;
import com.manage.citys.model.Province;

public class AreaAbstract extends BaseObject implements Serializable {

	protected Integer id;
	protected String code;
	protected String name;
	protected String citycode;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCitycode() {
		return citycode;
	}
	public void setCitycode(String citycode) {
		this.citycode = citycode;
	}
	public Serializable getPrimarykey() {
		return id;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		Province castOther = (Province) other;

		return ((this.getId() == castOther.getId()) || (this.getId() != null
				&& castOther.getId() != null && this.getId().equals(
				castOther.getId())));
	}

	public int hashCode() {
		HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
		hcb.append(getId());

		return hcb.toHashCode();
	}

	public String toString() {
		ToStringBuilder sb = new ToStringBuilder(this,
		ToStringStyle.DEFAULT_STYLE);
		sb.append("id", this.id);
		return sb.toString();
	}

	@Override
	public Integer getVersion() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setVersion(Integer version) {
		// TODO Auto-generated method stub
		
	}

}
