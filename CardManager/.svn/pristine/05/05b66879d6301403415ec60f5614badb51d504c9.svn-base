package com.manage.citys.action;

import java.util.List;

import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.cache.CitysUtils;
import com.manage.citys.model.Area;
import com.manage.citys.model.City;
import com.manage.citys.model.Province;
import com.manage.citys.model.Region;
import com.sdicons.json.mapper.JSONMapper;

public class CitysAction extends BaseAction {
	
	private Integer fid;
	private String data;
	
	/**
	 * @author LLJ
	 * @date Sep 1, 2015 3:42:51 PM
	 * @return
	 * @throws Exception
	 * @see 获得省份列表json
	 */
	public String getProvinceJson() throws Exception{
		List<Region> provinceList = CitysUtils.getRegionMap().get(0);
		data = JSONMapper.toJSON(provinceList).render(false);
		return SUCCESS;
	}
	
	/**
	 * @author LLJ
	 * @date Sep 1, 2015 3:44:47 PM
	 * @return
	 * @throws Exception
	 * @see 根据省份名称获得城市列表json
	 */
	public String getCityJson() throws Exception{
		if(Utils.isNotNullOrEmpty(fid)){
			List<Region> cityList = CitysUtils.getRegionMap().get(fid);
			data = JSONMapper.toJSON(cityList).render(false);
		}
		return SUCCESS;
	}
	
	/**
	 * @author LLJ
	 * @date Sep 1, 2015 3:46:47 PM
	 * @return
	 * @throws Exception
	 * @see 根据城市名称获得区县列表json
	 */
	public String getAreaJson() throws Exception{
		if(Utils.isNotNullOrEmpty(fid)){
			List<Region> cityList = CitysUtils.getRegionMap().get(fid);
			data = JSONMapper.toJSON(cityList).render(false);
		}
		return SUCCESS;
	}
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}

	public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

}
