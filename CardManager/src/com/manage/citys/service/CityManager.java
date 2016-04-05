package com.manage.citys.service;

import java.util.List;

import com.base.framework.service.Manager;
import com.manage.citys.model.Area;
import com.manage.citys.model.City;
import com.manage.citys.model.Province;
import com.manage.citys.model.Region;

public interface CityManager extends Manager {
	
	/**
	 * @author LLJ
	 * @date Sep 1, 2015 3:24:22 PM
	 * @return
	 * @see 获得省份列表
	 */
	public List<Province> getProvinceList();
	
	/**
	 * @author LLJ
	 * @date Sep 1, 2015 3:24:29 PM
	 * @return
	 * @see 获得城市列表
	 */
	public List<City> getCityList(); 

	/**
	 * @author LLJ
	 * @date Sep 1, 2015 3:24:57 PM
	 * @return
	 * @see 获得区县列表
	 */
	public List<Area> getAreaList();
	
	/**
	 * @author LLJ
	 * @date Sep 9, 2015 1:31:05 PM
	 * @return
	 * @see 获得省市区列表
	 */
	public List<Region> getRegionList();
}
